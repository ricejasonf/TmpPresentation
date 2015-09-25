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
{
  getRouter
  Slides
} = require './Slides.coffee'

slide_number = 0

Index = ReactComponent
  render: ->
    onComponentDidMount: ->
      body = window.document.getElementsByTagName("BODY")[0]
      body.addEventListener 'keydown', (e) =>
        if (e.keyCode == '39')
          slide_number++
        else if (e.keyCode == '37')
          slide_number--
        if slide_number < 0
          slide_number = 0
        slide_number %= Slides.length
        @forceUpdate()
    div
      className: 'index'
      Slides[0]()

module.exports =
  Index: Index
