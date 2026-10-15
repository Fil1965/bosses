// scripts/package.mjs
// Empaqueta el addon Bosses en un .zip con el formato
// Bosses_<version_con_guiones_bajos>.zip dentro de packages/.
// Estructura del zip (requisito CurseForge):
//   Bosses_<v>.zip
//   ├── Bosses/            (core)
//   └── Bosses_<Pack>/     (packs de datos, carpetas top-level)
// Uso: npm run package

import { execSync } from "node:child_process";
import { promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC_DIR = path.resolve(__dirname, "..");
const PACKAGES_DIR = path.join(SRC_DIR, "packages");
const STAGING_DIR = path.join(PACKAGES_DIR, ".staging");
const ADDON_NAME = "Bosses";

// Deben coincidir con package.json -> files
const ADDON_FILES = [
  "Bosses.toc",
  "Bosses.lua",
  "localization.core.lua",
  "localization.es.lua",
  "localization.fr.lua",
  "localization.de.lua",
  "localization.pt.lua",
  "localization.zh.lua",
  "libs/LibStub/LibStub.lua",
  "libs/CallbackHandler-1.0/CallbackHandler-1.0.lua",
  "libs/LibDataBroker-1.1/LibDataBroker-1.1.lua",
  "libs/LibDBIcon-1.0/LibDBIcon-1.0.lua",
];

// Packs de datos incluidos en el mismo zip (cada uno es una carpeta
// top-level del zip con su propio .toc), en orden cronológico de expansión
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

function psEscape(str) {
  // Escapa comillas simples para PowerShell (usando comilla simple como delimitador)
  return str.replace(/'/g, "''");
}

async function main() {
  const version = await readPackageVersion();
  const versionTag = version.replace(/\./g, "_");
  const zipName = `${ADDON_NAME}_${versionTag}.zip`;
  const zipPath = path.join(PACKAGES_DIR, zipName);

  const coreStaging = path.join(STAGING_DIR, ADDON_NAME);

  console.log(`Empaquetando ${ADDON_NAME} v${version} -> packages/${zipName}\n`);

  // Limpieza previa
  await fs.rm(PACKAGES_DIR, { recursive: true, force: true });
  await fs.mkdir(coreStaging, { recursive: true });

  // Copiar archivos del core al staging
  for (const file of ADDON_FILES) {
    const src = path.join(SRC_DIR, file);
    const dest = path.join(coreStaging, file);
    try {
      await fs.mkdir(path.dirname(dest), { recursive: true });
      await fs.copyFile(src, dest);
      console.log(`  ✓ ${file}`);
    } catch (err) {
      if (err.code === "ENOENT") {
        console.warn(`  ! No existe el archivo origen: ${file} (omitido)`);
        continue;
      }
      throw err;
    }
  }

  // Copiar packs (cada uno va como carpeta top-level dentro del zip)
  const staged = [coreStaging];
  for (const folder of ADDON_FOLDERS) {
    const dest = path.join(STAGING_DIR, folder);
    try {
      await fs.cp(path.join(SRC_DIR, folder), dest, { recursive: true });
      staged.push(dest);
      console.log(`  ✓ ${folder}/`);
    } catch (err) {
      if (err.code === "ENOENT") {
        console.warn(`  ! No existe la carpeta origen: ${folder} (omitida)`);
        continue;
      }
      throw err;
    }
  }

  // Crear el zip con PowerShell (Compress-Archive)
  // Cada ruta preserva su nombre de carpeta dentro del zip.
  console.log(`\nComprimiendo...`);
  const psPaths = staged.map((p) => `'${psEscape(p)}'`).join(",");
  const psCommand = `Compress-Archive -Path ${psPaths} -DestinationPath '${psEscape(zipPath)}' -Force`;
  try {
    execSync(
      `powershell -NoProfile -NonInteractive -Command "${psCommand.replace(/"/g, '\\"')}"`,
      { stdio: "inherit" }
    );
  } catch (err) {
    console.error("\nError al crear el zip con PowerShell Compress-Archive:", err.message);
    process.exit(1);
  }

  // Eliminar el staging (solo queremos el zip)
  await fs.rm(STAGING_DIR, { recursive: true, force: true });

  console.log(`\n¡Listo! Paquete creado: packages/${zipName}`);
}

main().catch((err) => {
  console.error("\nError durante el empaquetado:", err);
  process.exit(1);
});