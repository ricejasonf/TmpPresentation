{
  ReactComponent
  Route
  Link
  DOM: {
    h2
    div
    ul
    li
  }
} = require '../lib/deps.coffee'

module.exports = ReactComponent
  render: ->
    div
      className: 'slide'
      h2
        className: 'title'
        'C++ Template:'
      ul null,
        li null,
          "Pure function ran at compile-time"
        li null,
          "Generates Code"
        li null,
          "Class, Function, Variable"
        li null,
          "All types and values are immutable"
