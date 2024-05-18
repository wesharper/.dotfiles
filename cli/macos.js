import {
  cancel,
  isCancel,
  select,
  confirm,
  multiselect,
  log,
} from "@clack/prompts";
import { $, ExecaError } from "execa";
import color from "picocolors";

export async function initializeMacOS() {
  const selectedWizards = await multiselect({
    message:
      "Now that your dotfiles are good to go, select the following items you'd like this wizard to help configure",
    options: [
      {
        value: "applications",
        label: "Applications",
        hint: "Install and configure commonly-used applications",
      },
    ],
    required: false,
  });

  if (isCancel(selectedWizards)) {
    cancel(color.bgYellow("Operation cancelled, bye now!"));
    return process.exit(0);
  }

  if (selectedWizards.includes("applications")) {
    const selectedApplications = await multiselect({
      message: "Select the applications you'd like to install",
      options: applicationOptions.sort((a, b) => a.label - b.label),
    });

    if (isCancel(selectedApplications)) {
      cancel(color.bgYellow("Operation cancelled, bye now!"));
      return process.exit(0);
    }

    for (const app of selectedApplications) {
      const { failed } = await $({
        reject: false,
      })`test -d /Applications/${app.executableName}`;

      if (!failed) {
        log.info(
          `${app.applicationName} already installed, skipping installation`
        );
      } else {
        log.info(`Installing ${app.applicationName}...`);
        const [cmd, ...args] = app.installationScript.split(" ");

        try {
          await $(cmd, args, {
            stripFinalNewline: true,
          });
        } catch (e) {
          log.error("Installation failed");
          if (e instanceof ExecaError) {
            log.error(e.originalMessage);
          }
        }
      }
    }
  }
}

const applicationOptions = [
  {
    value: {
      applicationName: "1Password",
      executableName: "1Password.app",
      installationScript:
        "brew reinstall --cask --force --require-sha 1password",
    },
    label: "1Password",
  },
  {
    value: {
      applicationName: "Brave Browser",
      executableName: "Brave Browser.app",
      installationScript:
        "brew reinstall --cask --force --require-sha brave-browser",
    },
    label: "Brave Browser",
  },
  {
    value: {
      applicationName: "Discord",
      executableName: "Discord.app",
      installationScript: "brew reinstall --cask --force --require-sha discord",
    },
    label: "Discord",
  },
  {
    value: {
      applicationName: "Docker",
      executableName: "Docker.app",
      installationScript: "brew reinstall --cask --force --require-sha docker",
    },
    label: "Docker",
  },
  {
    value: {
      applicationName: "GitButler",
      executableName: "GitButler.app",
      installationScript:
        "brew reinstall --cask --force --require-sha gitbutler",
    },
    label: "GitButler",
  },
  {
    value: {
      applicationName: "iTerm2",
      executableName: "iTerm.app",
      installationScript: "brew reinstall --cask --force --require-sha iterm2",
    },
    label: "iTerm2",
  },
  {
    value: {
      applicationName: "Linear",
      executableName: "Linear.app",
      installationScript:
        "brew reinstall --cask --force --require-sha linear-linear",
    },
    label: "Linear",
  },
  {
    value: {
      applicationName: "Nord VPN",
      executableName: "NordVPN.app",
      installationScript: "brew reinstall --cask --force --require-sha nordvpn",
    },
    label: "Nord VPN",
  },
  {
    value: {
      applicationName: "Rectangle Pro",
      executableName: "Rectangle Pro.app",
      installationScript:
        "brew reinstall --cask --force --require-sha rectangle-pro",
    },
    label: "Rectangle Pro",
  },
  {
    value: {
      applicationName: "Slack",
      executableName: "Slack.app",
      installationScript: "brew reinstall --cask --force --require-sha slack",
    },
    label: "Slack",
  },
  {
    value: {
      applicationName: "Spotify",
      executableName: "Spotify.app",
      installationScript: "brew reinstall --cask --force --require-sha spotify",
    },
    label: "Spotify",
  },
];
