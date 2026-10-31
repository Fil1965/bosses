// scripts/package.mjs
// Empaqueta el addon Bosses en DOS zips por versión (requisito de CurseForge):
//   packages/Bosses_<v>_retail.zip   -> Bosses/ + los packs de retail/Classic
//   packages/Bosses_<v>_forever.zip  -> Bosses/ + los packs de la línea Forever
// Estructura de cada zip (requisito CurseForge):
//   Bosses_<v>_<cliente>.zip
//   ├── Bosses/            (core; el MISMO en los dos zips)
//   └── Bosses_<Pack>/     (packs de datos, carpetas top-level)
// El core declara en su .toc todas las versiones (120105, 50504, 20506,
// 11509, 16001): cada cliente carga el suyo por coincidencia exacta y los
// packs retail NO declaran 16001 → en Forever no cargan (y por eso el zip
// de Forever lleva solo los packs de su línea).
// Uso: npm run package [--solo=retail|forever]

import { execFileSync } from "node:child_process";
import { promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { ADDON_FILES, LINEAS } from "./_constantes.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC_DIR = path.resolve(__dirname, "..");
const PACKAGES_DIR = path.join(SRC_DIR, "packages");
const STAGING_DIR = path.join(PACKAGES_DIR, ".staging");
const ADDON_NAME = "Bosses";

// ADDON_FILES y LINEAS vienen de ./_constantes.mjs (antes duplicados aquí y en
// update.mjs; la fuente de verdad de los ficheros del core es package.json -> files).

async function readPackageVersion() {
  const pkgRaw = await fs.readFile(path.join(SRC_DIR, "package.json"), "utf8");
  return JSON.parse(pkgRaw).version;
}

function psEscape(str) {
  // Escapa comillas simples para PowerShell (usando comilla simple como delimitador)
  return str.replace(/'/g, "''");
}

async function empaquetar(linea, version) {
  const versionTag = version.replace(/\./g, "_");
  const zipName = `${ADDON_NAME}_${versionTag}_${linea.id}.zip`;
  const zipPath = path.join(PACKAGES_DIR, zipName);
  const coreStaging = path.join(STAGING_DIR, ADDON_NAME);

  console.log(`\nEmpaquetando ${ADDON_NAME} v${version} (${linea.id}) -> packages/${zipName}\n`);

  // Limpieza previa del staging de esta línea
  await fs.rm(STAGING_DIR, { recursive: true, force: true });
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
  for (const folder of linea.packs) {
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

  // Comprimir con PowerShell (Compress-Archive). execFileSync SIN shell:
  // los argumentos van en array, así que ningún carácter de las rutas (ni
  // comillas, ni %, ni backticks) puede reinterpretarse como comando.
  console.log(`\nComprimiendo...`);
  const psPaths = staged.map((p) => `'${psEscape(p)}'`).join(",");
  const psCommand = `Compress-Archive -Path ${psPaths} -DestinationPath '${psEscape(zipPath)}' -Force`;
  try {
    execFileSync("powershell", ["-NoProfile", "-NonInteractive", "-Command", psCommand], {
      stdio: "inherit",
    });
  } catch (err) {
    console.error("\nError al crear el zip con PowerShell Compress-Archive:", err.message);
    process.exit(1);
  }

  console.log(`\n¡Listo! Paquete creado: packages/${zipName}`);
}

async function main() {
  const version = await readPackageVersion();
  const arg = process.argv.slice(2).find((a) => a.startsWith("--solo="));
  const solo = arg ? arg.slice("--solo=".length) : null;
  const lineas = solo ? LINEAS.filter((l) => l.id === solo) : LINEAS;
  if (!lineas.length) {
    console.error(`Línea desconocida: ${solo} (usa retail o forever)`);
    process.exit(1);
  }

  // NO se borra PACKAGES_DIR entero: los zips de versiones ya subidas a
  // CurseForge no deben desaparecer si falla el empaquetado de la nueva (y
  // regenerarlos está prohibido). Solo se crea si falta y cada zip nuevo
  // sobrescribe el suyo con -Force. El staging sí se limpia (es temporal).
  await fs.mkdir(PACKAGES_DIR, { recursive: true });

  for (const linea of lineas) {
    await empaquetar(linea, version);
  }

  // Eliminar el staging (solo queremos los zips)
  await fs.rm(STAGING_DIR, { recursive: true, force: true });
}

main().catch((err) => {
  console.error("\nError durante el empaquetado:", err);
  process.exit(1);
});
