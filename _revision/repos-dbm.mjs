// Lista los repos de DeadlyBossMods desde el spill del fetch de la API de GitHub.
import { readFileSync } from "node:fs";
const t = readFileSync("C:/Users/pming/AppData/Local/Temp/dsh-spill-Q7GIQB/session-1b14f8803827/6a4d4d37cf47-web_fetch.txt", "utf8");
const nombres = [...new Set([...t.matchAll(/"full_name":"DeadlyBossMods\/([^"]+)"/g)].map((x) => x[1]))];
console.log(nombres.join("\n"));