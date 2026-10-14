// scripts/update.mjs
// Sincroniza los archivos del addon Bosses a la carpeta de AddOns de WoW.
// Uso: npm run update

import { promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC_DIR = path.resolve(__dirname, "..");
const ADDON_NAME = "Bosses";
const DEST_ROOT =
  "C:\\Program Files (x86)\\World of Warcraft\\_retail_\\Interface\\AddOns";
const DEST_DIR = path.join(DEST_ROOT, ADDON_NAME);

// Archivos que componen el addon (deben coincidir con package.json -> files)
const ADDON_FILES = [
  "Bosses.toc",
  "Bosses.lua",
  "localization.core.lua",
  "localization.es.lua",
  "localization.fr.lua",
  "localization.de.lua",
  "libs/LibStub/LibStub.lua",
  "libs/CallbackHandler-1.0/CallbackHandler-1.0.lua",
  "libs/LibDataBroker-1.1/LibDataBroker-1.1.lua",
  "libs/LibDBIcon-1.0/LibDBIcon-1.0.lua",
];

// Packs de datos que se copian como carpetas independientes a AddOns
// (en orden cronológico de expansión, como los esqueletos de la casa)
const ADDON_FOLDERS = [
  "Bosses_Vanilla",
  "Bosses_TBC",
  "Bosses_WotLK",
  "Bosses_Cata",
  "Bosses_MoP",
  "Bosses_WoD",
  "Bosses_Legion",
  "Bosses_BfA",
  "Bosses_Shadowlands",
  "Bosses_Dragonflight",
  "Bosses_TWW",
  "Bosses_Midnight",
];

async function readPackageVersion() {
  const pkgRaw = await fs.readFile(path.join(SRC_DIR, "package.json"), "utf8");
  return JSON.parse(pkgRaw).version;
}

// Wipe + copia fresca: borra la carpeta destino entera y la recrea vacía.
// Así no sobrevive nada de versiones anteriores (ficheros renombrados,
// packs retirados que quedarían "desenganchados" en AddOns).
async function cleanDestDir(dir) {
  await fs.rm(dir, { recursive: true, force: true });
  await fs.mkdir(dir, { recursive: true });
}

async function copyFile(name) {
  const src = path.join(SRC_DIR, name);
  const dest = path.join(DEST_DIR, name);
  try {
    await fs.mkdir(path.dirname(dest), { recursive: true });
    await fs.copyFile(src, dest);
    console.log(`  ✓ ${name}`);
    return true;
  } catch (err) {
    if (err.code === "ENOENT") {
      console.warn(`  ! No existe el archivo origen: ${name} (omitido)`);
      return false;
    }
    if (err.code === "EACCES" || err.code === "EPERM") {
      console.error(
        `  ✗ Sin permisos para escribir: ${dest}\n    ¿Necesitas ejecutar como administrador?`
      );
      throw err;
    }
    throw err;
  }
}

async function main() {
  const version = await readPackageVersion();
  console.log(`Bosses v${version} -> ${DEST_DIR}\n`);

  // Wipe completo del core: borra todo el contenido previo de la carpeta
  await cleanDestDir(DEST_DIR);

  let ok = 0;
  let fail = 0;
  for (const file of ADDON_FILES) {
    try {
      if (await copyFile(file)) ok++;
    } catch {
      fail++;
      break; // error fatal (permisos), detener
    }
  }

  // Copiar los packs como carpetas independientes a AddOns.
  // Wipe completo de cada carpeta destino antes de copiar: si un pack
  // se retira del proyecto, no queda "desenganchado" en AddOns.
  for (const folder of ADDON_FOLDERS) {
    const destFolder = path.join(DEST_ROOT, folder);
    const srcFolder = path.join(SRC_DIR, folder);
    try {
      const srcExists = await fs.stat(srcFolder).then(() => true, () => false);
      await fs.rm(destFolder, { recursive: true, force: true });
      if (srcExists) {
        await fs.cp(srcFolder, destFolder, { recursive: true });
        console.log(`  ✓ ${folder}/`);
        ok++;
      } else {
        console.warn(`  ! No existe la carpeta origen: ${folder} (eliminada de AddOns)`);
      }
    } catch (err) {
      if (err.code === "EACCES" || err.code === "EPERM") {
        console.error(
          `  ✗ Sin permisos para escribir: ${destFolder}\n    ¿Necesitas ejecutar como administrador?`
        );
        throw err;
      }
      throw err;
    }
  }

  // Carpeta del proyecto legado: el addon se renombró de "Boses" a
  // "Bosses" (0.11.0). Las carpetas del addon antiguo en AddOns se
  // retiran al hacer update: si quedaran, habría DOS addons cargados
  // con los mismos lanzamientos automáticos.
  const LEGACY_FOLDERS = ["Boses", "Boses_Midnight", "Boses_Cata", "Boses_TWW"];

  // Retirar las carpetas del proyecto antiguo (cada una avisa al borrarla).
  for (const folder of LEGACY_FOLDERS) {
    const legacyDir = path.join(DEST_ROOT, folder);
    try {
      const exists = await fs.stat(legacyDir).then(() => true, () => false);
      if (exists) {
        await fs.rm(legacyDir, { recursive: true, force: true });
        console.log(`  ✓ ${folder}/ eliminada (carpeta del proyecto "Boses", renombrado a Bosses)`);
      }
    } catch (err) {
      console.warn(`  ! No se pudo retirar la carpeta antigua: ${legacyDir} (${err.code ?? err.message})`);
    }
  }

  // Carpetas Bosses*/Boses* en AddOns que este script ya no gestiona: se avisan
  // pero NO se borran automáticamente (podrían ser packs externos de la
  // comunidad instalados a propósito). Borrarlas a mano si son residuo.
  try {
    const managed = new Set([ADDON_NAME, ...ADDON_FOLDERS]);
    for (const entry of await fs.readdir(DEST_ROOT, { withFileTypes: true })) {
      if (entry.isDirectory() && /^Bos/i.test(entry.name) && !managed.has(entry.name)) {
        console.warn(
          `  ! Carpeta huérfana (ya no se gestiona): ${path.join(DEST_ROOT, entry.name)} — borrar a mano si ya no se usa`
        );
      }
    }
  } catch {
    // Si AddOns no existe o no se puede listar, no bloquea el resto
  }

  console.log(`\n${ok} archivo(s) copiado(s).`);
  if (fail > 0) {
    console.error(`${fail} error(es). Revisa los mensajes anteriores.`);
    process.exit(1);
  }
  console.log("¡Addon actualizado correctamente!");
}

main().catch((err) => {
  console.error("\nError durante la actualización:", err);
  process.exit(1);
});