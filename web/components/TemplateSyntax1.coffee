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

Index = ReactComponent
  render: ->
    div
      className: 'slide'
      h3
        className: 'title'
        'Template Syntax'
      Syntax
        syntax: require '../cpp/TemplateSyntax1.cpp'

module.exports =
  Index: Index
