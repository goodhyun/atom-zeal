childProcess = require 'child_process'
exec = childProcess.exec

plugin = module.exports =
  activate: () ->
    atom.workspaceView.command('atom-zeal:context-menu', @contextMenu)
    atom.workspaceView.command('atom-zeal:shortcut', @shortcut)

  shortcut: () ->
    editor    = atom.workspace.getActiveEditor()
    selection = editor.getSelection().getText()

    return plugin.search(selection) if selection

    scopes       = editor.getCursorScopes()
    currentScope = scopes[scopes.length - 1]

    # Use the current scope, if available
    # Else use the word under the cursor
    if scopes.length > 1
      range = editor.bufferRangeForScopeAtCursor(currentScope)
      text  = editor.getTextInBufferRange(range)
    else
      text = editor.getWordUnderCursor()

    plugin.search(text)

  contextMenu: () ->
    plugin.search(atom.workspace.getActiveEditor().getWordUnderCursor())

  search: (string) ->
    exec("zeal --query #{string}")
