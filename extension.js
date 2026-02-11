const vscode = require("vscode");

/**
 * This method is called when your extension is activated
 */
function activate(context) {
  console.log("Driver Snippets extension is now active!");

  // Your snippets are loaded automatically via package.json
  // This just confirms the extension loaded correctly

  // Optional: Show a notification the first time
  vscode.window.showInformationMessage("Driver Snippets is ready!");
}

/**
 * This method is called when your extension is deactivated
 */
function deactivate() {}

module.exports = {
  activate,
  deactivate,
};
