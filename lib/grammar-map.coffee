###
Copyright (c) 2014 Blake Embrey (hello@blakeembrey.com)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
###

css = [
  'css',
  'bootstrap',
  'foundation',
  'awesome'
  'cordova',
  'phonegap'
]

js = [
  'javascript',
  'jquery',
  'jqueryui',
  'jquerym',
  'angularjs',
  'backbone',
  'marionette',
  'meteor',
  'moo',
  'prototype',
  'ember',
  'lodash',
  'underscore',
  'sencha',
  'extjs',
  'titanium',
  'knockout',
  'zepto',
  'cordova',
  'phonegap',
  'yui',
  'unity3d'
]

web = [
  'html',
  'svg',
  'statamic'
].concat(js, css)

coffeescript = [
  'coffee'
].concat(web)

php = [
  'php',
  'wordpress',
  'drupal',
  'zend',
  'laravel',
  'yii',
  'joomla',
  'ee',
  'codeigniter',
  'cakephp',
  'phpunit',
  'symfony',
  'typo3',
  'twig',
  'smarty',
  'phpp',
  'mysql',
  'sqlite',
  'mongodb',
  'psql',
  'redis',
  'html',
  'statamic',
  'svg',
  'css',
  'bootstrap',
  'foundation',
  'awesome'
]

ruby = [
  'ruby',
  'rubygems',
  'rails'
]

objectiveC = [
  'iphoneos',
  'macosx',
  'appledoc',
  'cocos2d',
  'cocos3d',
  'kobold2d',
  'sparrow',
  'c',
  'manpages'
]

module.exports =
  'ActionScript': [
    'actionscript'
  ]
  'Boo': [
    'unity3d'
  ]
  'C': [
    'c',
    'glib',
    'gl2',
    'gl3',
    'gl4',
    'manpages'
  ]
  'C++': [
    'cpp',
    'net',
    'boost',
    'qt',
    'cvcpp',
    'cocos2dx',
    'c',
    'manpages'
  ]
  'C#': [
    'net',
    'mono',
    'unity3d'
  ]
  'Objective-J': [
    'cappuccino'
  ]
  'Clojure': [
    'clojure'
  ]
  'CoffeeScript': coffeescript
  'CoffeeScript (Literate)': coffeescript
  'ColdFusion': [
    'cf'
  ]
  'CSS': css
  'Dart': [
    'dartlang',
    'polymerdart',
    'angulardart'
  ]
  'Elixir': [
    'elixir'
  ]
  'Erlang': [
    'erlang'
  ]
  'Go': [
    'go',
    'godoc'
  ]
  'Haskell': [
    'haskell'
  ]
  'Ruby Haml': [
    'haml'
  ]
  'Handlebars': web
  'HTML': web
  'HTML (Rails)': [
    'ruby',
    'rubygems',
    'rails'
  ].concat(web)
  'Jade': [
    'jade'
  ].concat(web)
  'Java': [
    'java',
    'javafx',
    'grails',
    'groovy',
    'playjava',
    'spring',
    'cvj',
    'processing'
  ]
  'JavaScript': js
  'LESS': css
  'Lisp': [
    'lisp'
  ]
  'Literate Haskell': [
    'haskell'
  ]
  'Lua': [
    'lua',
    'corona'
  ]
  'GitHub Markdown': [
    'markdown'
  ]
  'Objective-C': objectiveC
  'Objective-C++': [
    'cpp',
    'cocos2dx'
  ].concat(objectiveC)
  'OCaml': [
    'ocaml'
  ]
  'Perl': [
    'perl',
    'manpages'
  ]
  'PHP': php.concat(web)
  'Processing': [
    'processing'
  ]
  'Puppet': [
    'puppet'
  ]
  'Python': [
    'python',
    'django',
    'twisted',
    'sphinx',
    'flask',
    'tornado',
    'sqlalchemy',
    'numpy',
    'scipy',
    'salt',
    'cvp'
  ]
  'R': [
    'r'
  ]
  'Ruby': ruby
  'Ruby on Rails': ruby
  'Rust': [
    'rust'
  ]
  'Sass': [
    'sass',
    'compass',
    'bourbon',
    'neat'
  ].concat(css)
  'Scala': [
    'scala',
    'akka',
    'playscala'
  ]
  'Shell Scripts': [
    'bash',
    'manpages'
  ]
  'SQL': [
    'mysql',
    'sqlite',
    'psql'
  ]
  'SQL (Rails)': ruby
  'Stylus': css
  'Tcl': [
    'tcl'
  ]
  'YAML': [
    'chef',
    'ansible'
  ]
