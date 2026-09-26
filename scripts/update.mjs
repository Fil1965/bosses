// scripts/update.mjs
// Sincroniza los archivos del addon Boses a la carpeta de AddOns de WoW.
// Uso: npm run update

import { promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC_DIR = path.resolve(__dirname, "..");
const ADDON_NAME = "Boses";
const DEST_ROOT =
  "C:\\Program Files (x86)\\World of Warcraft\\_retail_\\Interface\\AddOns";
const DEST_DIR = path.join(DEST_ROOT, ADDON_NAME);

// Archivos que componen el addon (deben coincidir con package.json -> files)
const ADDON_FILES = [
  "Boses.toc",
  "Boses.lua",
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
const ADDON_FOLDERS = [
  "Boses_Zulaman",
  "Boses_Midnight",
  "Boses_Cata",
  "Boses_TWW",
];

async function readPackageVersion() {
  const pkgRaw = await fs.readFile(path.join(SRC_DIR, "package.json"), "utf8");
  return JSON.parse(pkgRaw).version;
}

async function ensureDestDir() {
  await fs.mkdir(DEST_DIR, { recursive: true });
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
  console.log(`Boses v${version} -> ${DEST_DIR}\n`);

  await ensureDestDir();

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

  // Copiar los packs como carpetas independientes a AddOns
  for (const folder of ADDON_FOLDERS) {
    try {
      await fs.cp(path.join(SRC_DIR, folder), path.join(DEST_ROOT, folder), { recursive: true });
      console.log(`  ✓ ${folder}/`);
      ok++;
    } catch (err) {
      if (err.code === "ENOENT") {
        console.warn(`  ! No existe la carpeta origen: ${folder} (omitida)`);
        continue;
      }
      throw err;
    }
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