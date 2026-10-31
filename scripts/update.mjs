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

import { promises as fs, existsSync, readFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { ADDON_FILES, LINEAS } from "./_constantes.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC_DIR = path.resolve(__dirname, "..");
const ADDON_NAME = "Bosses";
// Raíz de la instalación de WoW. Orden de resolución (2026-10, tras mover el
// juego a D:\Games):
//   1. WOW_ROOT (variable de entorno) — fuerza total, también para pruebas.
//   2. Fichero `.wow-root` en la RAÍZ DEL PROYECTO (gitignored): la ruta que
//      el dueño escribe una vez ("D:\Games\World of Warcraft") y el script la
//      recuerda. Así `npm run update` funciona solo tras el traslado.
//   3. Candidatos típicos (D:\Games primero) sondeando _retail_/_classic_…
//      OJO: bajo el sandbox de DSH existsSync fuera del workspace devuelve
//      false en vez de lanzar, así que la autodetección puede fallar en el
//      entorno de desarrollo: por eso el .wow-root tiene prioridad sobre ella.
//   4. Escaneo de unidades C:..Z: buscando <unidad>:\...\World of Warcraft con
//      marca de cliente (último recurso; también puede verse afectado por el
//      sandbox, pero en consola normal con permisos funciona).
const WOW_ROOT_OVERRIDE = process.env.WOW_ROOT;
const WOW_ROOT_CANDIDATOS = [
  "D:\\Games\\World of Warcraft", // instalación movida a D:\ (2026-10)
  "C:\\Program Files (x86)\\World of Warcraft",
  "C:\\Program Files\\World of Warcraft",
  "C:\\Games\\World of Warcraft",
  "D:\\World of Warcraft",
  "E:\\World of Warcraft",
  "E:\\Games\\World of Warcraft",
];
const MARCAS_CLIENTE = ["_retail_", "_classic_", "_classic_era_", "_ptr_", "_classic_ptr_", "_forever_"];
function tieneMarcaCliente(dir) {
  for (const marca of MARCAS_CLIENTE) {
    try { if (existsSync(path.join(dir, marca))) return true; } catch { /* unidad denegada */ }
  }
  return false;
}
function wowRootDesdeFichero() {
  try {
    const txt = readFileSync(path.join(SRC_DIR, ".wow-root"), "utf8").trim();
    // Se admite con o sin comillas; se descartan líneas de comentario
    const m = txt.match(/^"?([^"\r\n#]+?)"?\s*(?:#.*)?$/m);
    if (m && m[1].length > 2) return m[1];
  } catch { /* sin .wow-root */ }
  return null;
}
function escanearUnidades() {
  const halladas = [];
  for (let c = 67; c <= 90; c++) { // C..Z
    const unidad = String.fromCharCode(c) + ":\\";
    for (const nombre of ["World of Warcraft", "World of Warcraft_", "WoW", "Games\\World of Warcraft", "Games\\WoW"]) {
      const cand = path.join(unidad, nombre);
      if (tieneMarcaCliente(cand)) halladas.push(cand);
    }
  }
  return halladas;
}
function detectarWowRoot() {
  if (WOW_ROOT_OVERRIDE) return WOW_ROOT_OVERRIDE;
  const desdeFichero = wowRootDesdeFichero();
  if (desdeFichero) {
    if (tieneMarcaCliente(desdeFichero)) return desdeFichero;
    console.warn(`\n! .wow-root apunta a ${desdeFichero} pero no hay cliente ahí; se sigue autodetectando.`);
  }
  for (const cand of WOW_ROOT_CANDIDATOS) {
    if (tieneMarcaCliente(cand)) return cand;
  }
  const escaneadas = escanearUnidades();
  if (escaneadas.length > 0) return escaneadas[0];
  return null; // null = no se encontró: main() avisará y saldrá con error
}
const WOW_ROOT = detectarWowRoot();

// ADDON_FILES y LINEAS vienen de ./_constantes.mjs (antes duplicados aquí y en
// package.mjs; la fuente de verdad de los ficheros del core es package.json -> files).

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

// Swap atómico de carpeta: copia todo a un staging junto al destino
// (<nombre>.staging-<pid>) y luego hace rename sobre el destino viejo
// (rename dentro del mismo volumen es atómico en Windows/Node ≥ 16 con
// fs.rename cuando el destino no existe; si existiera, primero se mueve a
// <nombre>.old-<pid> y se borra tras el swap). Un fallo a mitad (EPERM,
// ENOSPC) NUNCA deja AddOns con el addon a medias: o está el viejo, o está
// el nuevo.
async function swapDir(srcFolder, destFolder, label) {
  const parent = path.dirname(destFolder);
  const staging = path.join(parent, `.${path.basename(destFolder)}.staging-${process.pid}`);
  const old = path.join(parent, `.${path.basename(destFolder)}.old-${process.pid}`);
  await fs.rm(staging, { recursive: true, force: true });
  await fs.rm(old, { recursive: true, force: true });
  await fs.cp(srcFolder, staging, { recursive: true });
  const destExists = await fs.stat(destFolder).then(() => true, () => false);
  if (destExists) await fs.rename(destFolder, old);
  try {
    await fs.rename(staging, destFolder);
  } catch (err) {
    // si el swap falla, se restaura el viejo
    if (destExists) await fs.rename(old, destFolder).catch(() => {});
    await fs.rm(staging, { recursive: true, force: true });
    throw err;
  }
  await fs.rm(old, { recursive: true, force: true });
  console.log(`  ✓ ${label}/ (swap atómico)`);
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
    console.warn(`\n! Cliente ${linea.id} no encontrado en ${destRoot} (WOW_ROOT=${WOW_ROOT ?? "(no detectado)"}) — se omite.`);
    return { ok: 0, fail: 0, omitida: true };
  }

  console.log(`\n${ADDON_NAME} v${version} -> ${destDir}\n`);

  // Swap atómico del core: staging con SOLO los ficheros de ADDON_FILES y
  // rename sobre la carpeta vieja (antes wipe + copia in-place → un fallo a
  // mitad dejaba AddOns sin el core o a medias: WoW arranca sin addon o con
  // ficheros viejos mezclados).
  const stagingCore = path.join(destRoot, `.${ADDON_NAME}.staging-${process.pid}`);
  const oldCore = path.join(destRoot, `.${ADDON_NAME}.old-${process.pid}`);
  await fs.rm(stagingCore, { recursive: true, force: true });
  await fs.rm(oldCore, { recursive: true, force: true });
  await fs.mkdir(stagingCore, { recursive: true });

  let ok = 0;
  let fail = 0;
  for (const file of ADDON_FILES) {
    try {
      if (await copyFile(path.join(SRC_DIR, file), path.join(stagingCore, file))) ok++;
    } catch {
      fail++;
      break; // error fatal (permisos), detener
    }
  }
  if (fail === 0) {
    // swap: rename del viejo aparte y del staging al sitio
    const coreExists = await fs.stat(destDir).then(() => true, () => false);
    if (coreExists) await fs.rename(destDir, oldCore);
    try {
      await fs.rename(stagingCore, destDir);
    } catch (err) {
      if (coreExists) await fs.rename(oldCore, destDir).catch(() => {});
      throw err;
    }
    await fs.rm(oldCore, { recursive: true, force: true });
    await fs.rm(stagingCore, { recursive: true, force: true });
    console.log(`  ✓ core (swap atómico en ${ADDON_NAME}/)`);
  } else {
    await fs.rm(stagingCore, { recursive: true, force: true });
  }

  // Copiar los packs de la línea como carpetas independientes a AddOns.
  // Swap atómico por pack (staging + rename) en vez de wipe + copia in-place:
  // si un pack se retira del proyecto, se elimina tras el swap; si falla la
  // copia, AddOns conserva el pack viejo intacto.
  for (const folder of linea.packs) {
    const destFolder = path.join(destRoot, folder);
    const srcFolder = path.join(SRC_DIR, folder);
    try {
      const srcExists = await fs.stat(srcFolder).then(() => true, () => false);
      if (srcExists) {
        await swapDir(srcFolder, destFolder, folder);
        ok++;
      } else {
        // pack retirado del proyecto: se quita de AddOns (con swap: rename a
        // .old y borrado, nunca borrado directo sobre el juego corriendo)
        await fs.rm(destFolder, { recursive: true, force: true });
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

  return { ok, fail, omitida: false };
}

async function main() {
  const version = await readPackageVersion();
  if (WOW_ROOT == null) {
    console.error("\nError: no se encontró la instalación de World of Warcraft.");
    console.error("  Escribe la ruta en un fichero .wow-root en la raíz del proyecto, p. ej.:");
    console.error('    D:\\Games\\World of Warcraft');
    console.error("  o ejecuta con la variable de entorno:");
    console.error('    WOW_ROOT="D:\\Games\\World of Warcraft" npm run update');
    process.exit(2);
  }
  console.log(`WOW_ROOT = ${WOW_ROOT}`);
  let ok = 0;
  let fail = 0;
  let omitidas = 0;
  for (const linea of LINEAS) {
    const r = await instalarLinea(linea, version);
    ok += r.ok;
    fail += r.fail;
    if (r.omitida) omitidas++;
  }

  console.log(`\n${ok} archivo(s) copiado(s).`);
  if (ok === 0) {
    // NUNCA un falso éxito: si no se copió nada, es un error.
    console.error("\nError: no se copió ningún archivo. Revisa WOW_ROOT / .wow-root y los avisos anteriores.");
    process.exit(1);
  }
  if (fail > 0 || omitidas > 0) {
    console.error(`\n${fail} error(es), ${omitidas} cliente(s) omitido(s). Revisa los mensajes anteriores.`);
    process.exit(1);
  }
  console.log("¡Addon actualizado correctamente!");
}

main().catch((err) => {
  console.error("\nError durante la actualización:", err);
  process.exit(1);
});
