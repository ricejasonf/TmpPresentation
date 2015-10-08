{
  ReactComponent
  Route
  Link
  Syntax
  DOM: {
    h3
    div
  }
} = require '../lib/deps.coffee'

module.exports = ReactComponent
  render: ->
    div
      className: 'slide'
      h3
        className: 'title'
        'Variadic Templates'
      Syntax
        syntax: require '../cpp/VariadicTemplates1.cpp'
