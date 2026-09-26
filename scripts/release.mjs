// scripts/release.mjs
// Flujo de release para Boses:
//   1. Bump de versión (package.json + Boses.toc)
//   2. Añade entrada al CHANGELOG.md
//   3. Empaqueta (npm run package)
//   4. Instala en WoW (npm run update)
//
// Uso:
//   npm run release -- "<mensaje>"              -> bump patch por defecto
//   npm run release -- patch "<mensaje>"        -> bump patch
//   npm run release -- minor "<mensaje>"        -> bump minor (patch -> 001)
//   npm run release -- major "<mensaje>"        -> bump major (minor -> 0, patch -> 001)
//   npm run release -- 0.7.0 "<mensaje>"        -> versión explícita
//
// Si no se pasa mensaje, se usa "Maintenance release".

import { execSync } from "node:child_process";
import { promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC_DIR = path.resolve(__dirname, "..");
const TOC_FILE = path.join(SRC_DIR, "Boses.toc");
const PKG_FILE = path.join(SRC_DIR, "package.json");
const CHANGELOG_FILE = path.join(SRC_DIR, "CHANGELOG.md");

const BUMP_TYPES = new Set(["patch", "minor", "major"]);

function todayISO() {
  return new Date().toISOString().slice(0, 10);
}

function parseArgs(argv) {
  const args = argv.slice(2);
  let bump = "patch";
  let message = "";

  if (args.length > 0) {
    if (BUMP_TYPES.has(args[0])) {
      bump = args[0];
      message = args.slice(1).join(" ").trim();
    } else if (/^\d+\.\d+\.\d+$/.test(args[0])) {
      bump = args[0]; // versión explícita
      message = args.slice(1).join(" ").trim();
    } else {
      message = args.join(" ").trim();
    }
  }

  if (!message) message = "Maintenance release";
  return { bump, message };
}

// Preserva ceros a la izquierda en el segmento patch
function bumpVersion(current, type) {
  const parts = current.split(".");
  if (parts.length !== 3) {
    throw new Error(`Formato de versión inesperado: ${current}`);
  }
  let [major, minor, patch] = parts.map(Number);
  const patchWidth = parts[2].length; // preserva ancho

  if (/^\d+\.\d+\.\d+$/.test(type)) {
    return type; // versión explícita
  }

  if (type === "patch") {
    patch += 1;
  } else if (type === "minor") {
    minor += 1;
    patch = 1;
  } else if (type === "major") {
    major += 1;
    minor = 0;
    patch = 1;
  } else {
    throw new Error(`Tipo de bump desconocido: ${type}`);
  }

  return `${major}.${minor}.${String(patch).padStart(patchWidth, "0")}`;
}

async function updatePackageVersion(newVersion) {
  const pkgRaw = await fs.readFile(PKG_FILE, "utf8");
  const pkg = JSON.parse(pkgRaw);
  pkg.version = newVersion;
  await fs.writeFile(PKG_FILE, JSON.stringify(pkg, null, 2) + "\n", "utf8");
  console.log(`  ✓ package.json -> ${newVersion}`);
}

async function updateTocVersion(newVersion) {
  let toc = await fs.readFile(TOC_FILE, "utf8");
  toc = toc.replace(/^## Version:.*$/m, `## Version: ${newVersion}`);
  await fs.writeFile(TOC_FILE, toc, "utf8");
  console.log(`  ✓ Boses.toc -> ${newVersion}`);
}

async function ensureChangelogHeader() {
  let content = "";
  try {
    content = await fs.readFile(CHANGELOG_FILE, "utf8");
  } catch (err) {
    if (err.code === "ENOENT") {
      content = "# Changelog\n\nAll notable changes to Boses are documented here.\n\n";
      await fs.writeFile(CHANGELOG_FILE, content, "utf8");
      console.log("  ✓ CHANGELOG.md creado");
      return;
    }
    throw err;
  }
  if (!/^# Changelog/m.test(content)) {
    const header = "# Changelog\n\nAll notable changes to Boses are documented here.\n\n";
    await fs.writeFile(CHANGELOG_FILE, header + content, "utf8");
  }
}

async function addToChangelog(version, message, date) {
  await ensureChangelogHeader();
  const content = await fs.readFile(CHANGELOG_FILE, "utf8");

  // Insertar justo después de la cabecera
  const headerEnd = content.indexOf("\n\n") + 2;
  const before = content.slice(0, headerEnd);
  const after = content.slice(headerEnd);

  const lines = message
    .split(/\r?\n/)
    .map((l) => `- ${l}`)
    .join("\n");

  const entry = `## [${version}] - ${date}\n${lines}\n\n`;

  await fs.writeFile(CHANGELOG_FILE, before + entry + after, "utf8");
  console.log(`  ✓ CHANGELOG.md += [${version}]`);
}

async function runScript(name) {
  console.log(`\n--- npm run ${name} ---`);
  execSync(`node scripts/${name}.mjs`, {
    cwd: SRC_DIR,
    stdio: "inherit",
  });
}

async function main() {
  const { bump, message } = parseArgs(process.argv);

  const pkgRaw = await fs.readFile(PKG_FILE, "utf8");
  const currentVersion = JSON.parse(pkgRaw).version;
  const newVersion = bumpVersion(currentVersion, bump);

  console.log(`Release Boses: ${currentVersion} -> ${newVersion}`);
  console.log(`Mensaje: "${message}"\n`);

  console.log("Actualizando versión:");
  await updatePackageVersion(newVersion);
  await updateTocVersion(newVersion);

  console.log("\nActualizando changelog:");
  await addToChangelog(newVersion, message, todayISO());

  await runScript("package");
  await runScript("update");

  console.log(`\n¡Release ${newVersion} completado!`);
  console.log(`  Sube packages/Boses_${newVersion.replace(/\./g, "_")}.zip a CurseForge.`);
}

main().catch((err) => {
  console.error("\nError durante el release:", err);
  process.exit(1);
});