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

WhatIsTmp = ReactComponent
  render: ->
    div
      className: 'slide'
      h2
        className: 'title'
        'What is it?'
      ul null,
        li null,
          "Purely functional, compile-time programming language built in to Standard C++"
        li null,
          "Discovered accidentally as the template system just happens to be Turing-complete"

module.exports =
  WhatIsTmp: WhatIsTmp
