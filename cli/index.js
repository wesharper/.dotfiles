import { cancel, intro, outro } from "@clack/prompts";

import { initializeMacOS } from "./macos.js";
import color from "picocolors";

async function main() {
  intro(color.bgCyan("Initialization wizard"));

  if (process.platform === "darwin") {
    await initializeMacOS();
  } else {
    cancel(
      color.bgRed(
        "Sorry, this platform is not currently supported by the initialization wizard"
      )
    );
    return process.exit(0);
  }

  outro(color.bgGreen("Good to go!"));
}

main().catch(console.error);
