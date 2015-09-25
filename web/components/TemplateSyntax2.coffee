{
  ReactComponent
  Route
  Link
  Syntax
  DOM: {
    h3
    div
    ul
    li
  }
} = require '../lib/deps.coffee'

TemplateSyntax2 = ReactComponent
  render: ->
    div
      className: 'slide'
      h3
        className: 'title'
        'Template Syntax'
      Syntax
        syntax: require '../cpp/TemplateSyntax2.cpp'

module.exports =
  TemplateSyntax2: TemplateSyntax2
