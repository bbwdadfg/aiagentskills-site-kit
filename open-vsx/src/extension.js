const vscode = require("vscode");

function open(url) {
  return vscode.env.openExternal(vscode.Uri.parse(url));
}

function activate(context) {
  context.subscriptions.push(
    vscode.commands.registerCommand("aiAgentSkills.openDirectory", () =>
      open("https://aiagentskills.net/skills/")
    ),
    vscode.commands.registerCommand("aiAgentSkills.openSubmit", () =>
      open("https://aiagentskills.net/submit/")
    )
  );
}

function deactivate() {}

module.exports = { activate, deactivate };

