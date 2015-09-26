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
  IncrementalList
} = require '../lib/deps.coffee'

module.exports = ReactComponent
  render: ->
    div
      className: 'slide'
      h2
        className: 'title'
        'What is it?'
      IncrementalList
        step: @props.step
        li null,
          "Purely functional, compile-time programming language built in to Standard C++"
        li null,
          "Discovered accidentally as the template system just happens to be Turing-complete"
