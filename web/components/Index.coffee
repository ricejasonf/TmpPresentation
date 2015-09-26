{
  ReactComponent
  DOM: {
    h3
    div
    ul
    li
  }
} = require '../lib/deps.coffee'
CppTmpSlideShow = require './CppTmpSlideShow.coffee'

frame = 0

Index = ReactComponent
  componentDidMount: ->
    window.document.onkeydown = (e) =>
      if (e.keyCode is 39)
        frame++
      else if (e.keyCode is 37)
        frame--
      @forceUpdate()

  render: ->
    div
      className: 'index'
      div
        style: position: 'absolute'
        frame
      CppTmpSlideShow
        frame: frame

module.exports =
  Index: Index
