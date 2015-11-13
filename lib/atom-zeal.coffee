childProcess = require 'child_process'
exec = childProcess.exec
platform = require('process').platform

plugin = module.exports =
  activate: () ->
    atom.commands.add 'atom-workspace', 'atom-zeal:context-menu', => @contextMenu()
    atom.commands.add 'atom-workspace', 'atom-zeal:shortcut', => @shortcut()

  shortcut: () ->
    editor    = atom.workspace.getActiveTextEditor()
    selection = editor.getSelectedText()

    return plugin.search(selection) if selection

    editor.selectWordsContainingCursors()
    selection = editor.getSelectedText()

    plugin.search(selection)

  contextMenu: () ->
    editor    = atom.workspace.getActiveTextEditor()
    editor.selectWordsContainingCursors()
    selection = editor.getSelectedText()
    plugin.search(selection)

  search: (string) ->
    grammar = atom.workspace.getActiveTextEditor().getGrammar()
    language = grammar.name.toLowerCase()

    # adjust search for some common languages
    switch language
        when 'ruby' then language = 'ruby,ruby 2'
        when 'python' then language = 'python,python 2,python 3'
        when 'java' then language = 'java se6,java se7,java se8'
        when 'html' then language = 'html,css'
        when 'c++' then language = 'c,c++' # + boost?

    if platform == 'darwin'
      if language != 'null grammar'
          exec('open -a zeal -n -g --args "' + language + ':' + string + '"')
      else
          exec('open -a zeal -n -g --args  "' + string + '"')
    else
      if language != 'null grammar'
          exec('zeal "' + language + ':' + string + '"')
      else
          exec('zeal "' + string + '"')
