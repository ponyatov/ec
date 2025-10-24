const vscode = require('vscode');

function hello() {
    vscode.window.showInformationMessage('e/hello');
}

async function activate(context) {
    vscode.window.showInformationMessage('e/activate');
    context.subscriptions.push(
        vscode.commands.registerCommand('dponyatov.e.hello', hello)
    );
}

function deactivate() {
    vscode.window.showInformationMessage('e/deactivate');
}

module.exports = {
    activate,
    deactivate,
    hello,
};
