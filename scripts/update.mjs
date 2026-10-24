// scripts/update.mjs
// Sincroniza los archivos del addon Bosses a la carpeta de AddOns de WoW.
//
// El CORE va a TODOS los clientes (es el mismo código para todos: el addon no
// detecta el flavor). Los PACKS van solo al cliente de su línea:
//   - retail/Classic: los packs de la línea principal (Vanilla → Midnight)
//   - Forever (1.60.1): solo el pack Bosses_Forever. Los packs de retail NO
//     declaran 16001 en su .toc → el cliente Forever los marca out-of-date y
//     no los carga; por eso no se instalan en ese cliente (dejarían 12
//     addons "desactualizados" en la lista).
//
// Uso: npm run update

import { promises as fs, existsSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC_DIR = path.resolve(__dirname, "..");
const ADDON_NAME = "Bosses";
// Raíz de la instalación de WoW. Se puede pointing con la variable de
// entorno WOW_ROOT (pruebas en una carpeta falsa; por defecto la instalación
// real, que en Windows suele pedir permisos de administrador).
const WOW_ROOT = process.env.WOW_ROOT ?? "C:\\Program Files (x86)\\World of Warcraft";

// Archivos que componen el addon (deben coincidir con package.json -> files)
const ADDON_FILES = [
  "Bosses.toc",
  "Bosses.lua",
  "localization.core.lua",
  "localization.es.lua",
  "localization.fr.lua",
  "localization.de.lua",
  "localization.pt.lua",
  "localization.zh.lua",
  "localization.ru.lua",
  "localization.ko.lua",
  "libs/LibStub/LibStub.lua",
  "libs/CallbackHandler-1.0/CallbackHandler-1.0.lua",
  "libs/LibDataBroker-1.1/LibDataBroker-1.1.lua",
  "libs/LibDBIcon-1.0/LibDBIcon-1.0.lua",
];

// Clientes destino y los packs de cada línea (en orden cronológico de
// expansión, como los esqueletos de la casa).
const LINEAS = [
  {
    id: "retail",
    carpeta: "_retail_",
    packs: [
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
    ],
  },
  {
    // WoW Forever (rama Camelot / Classic+, cliente 1.60.1 → interfaz 16001).
    id: "forever",
    carpeta: "_forever_",
    packs: ["Bosses_Forever"],
  },
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

async function copyFile(src, dest) {
  try {
    await fs.mkdir(path.dirname(dest), { recursive: true });
    await fs.copyFile(src, dest);
    console.log(`  ✓ ${src.slice(SRC_DIR.length + 1)}`);
    return true;
  } catch (err) {
    if (err.code === "ENOENT") {
      console.warn(`  ! No existe el archivo origen: ${src.slice(SRC_DIR.length + 1)} (omitido)`);
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

async function instalarLinea(linea, version) {
  const destRoot = path.join(WOW_ROOT, linea.carpeta, "Interface", "AddOns");
  const destDir = path.join(destRoot, ADDON_NAME);

  if (!existsSync(destRoot)) {
    console.warn(`\n! Cliente ${linea.id} no encontrado en ${destRoot} — se omite.`);
    return { ok: 0, fail: 0 };
  }

  console.log(`\n${ADDON_NAME} v${version} -> ${destDir}\n`);

  // Wipe completo del core: borra todo el contenido previo de la carpeta
  await cleanDestDir(destDir);

  let ok = 0;
  let fail = 0;
  for (const file of ADDON_FILES) {
    try {
      if (await copyFile(path.join(SRC_DIR, file), path.join(destDir, file))) ok++;
    } catch {
      fail++;
      break; // error fatal (permisos), detener
    }
  }

  // Copiar los packs de la línea como carpetas independientes a AddOns.
  // Wipe completo de cada carpeta destino antes de copiar: si un pack se
  // retira del proyecto, no queda "desenganchado" en AddOns.
  for (const folder of linea.packs) {
    const destFolder = path.join(destRoot, folder);
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

  // Carpeta del proyecto legado: el addon se renombró de "Boses" a "Bosses"
  // (0.11.0). Las carpetas del addon antiguo en AddOns se retiran al hacer
  // update: si quedaran, habría DOS addons cargados con los mismos
  // lanzamientos automáticos. (Solo en retail: el proyecto legado nunca
  // estuvo en el cliente Forever.)
  const LEGACY_FOLDERS = ["Boses", "Boses_Midnight", "Boses_Cata", "Boses_TWW"];
  if (linea.id === "retail") {
    for (const folder of LEGACY_FOLDERS) {
      const legacyDir = path.join(destRoot, folder);
      try {
        const exists = await fs.stat(legacyDir).then(() => true, () => false);
        if (exists) {
          await fs.rm(legacyDir, { recursive: true, force: true });
          console.log(`  ✓ ${folder}/ eliminada (carpeta del proyecto "Boses", renombrado a Bosses)`);
        }
      } catch (err) {
        console.warn(
          `  ! No se pudo retirar la carpeta antigua: ${legacyDir} (${err.code ?? err.message})`
        );
      }
    }
  }

  // Carpetas Bosses*/Boses* en AddOns que este script ya no gestiona: se avisan
  // pero NO se borran automáticamente (podrían ser packs externos de la
  // comunidad instalados a propósito). Borrarlas a mano si son residuo.
  try {
    const managed = new Set([ADDON_NAME, ...linea.packs]);
    for (const entry of await fs.readdir(destRoot, { withFileTypes: true })) {
      if (entry.isDirectory() && /^Bos/i.test(entry.name) && !managed.has(entry.name)) {
        console.warn(
          `  ! Carpeta huérfana (ya no se gestiona): ${path.join(destRoot, entry.name)} — borrar a mano si ya no se usa`
        );
      }
    }
  } catch {
    // Si AddOns no existe o no se puede listar, no bloquea el resto
  }

  return { ok, fail };
}

async function main() {
  const version = await readPackageVersion();
  let ok = 0;
  let fail = 0;
  for (const linea of LINEAS) {
    const r = await instalarLinea(linea, version);
    ok += r.ok;
    fail += r.fail;
  }

  console.log(`\n${ok} archivo(s) copiado(s).`);
  if (fail > 0) {
    console.error(`\n${fail} error(es). Revisa los mensajes anteriores.`);
    process.exit(1);
  }
  console.log("¡Addon actualizado correctamente!");
}

main().catch((err) => {
  console.error("\nError durante la actualización:", err);
  process.exit(1);
});
