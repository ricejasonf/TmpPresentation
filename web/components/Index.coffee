{
  ReactComponent
  DOM: {
    h3
    div
    ul
    li
  }
} = require '../lib/deps.coffee'
{
  CppTmpSlideShow
} = require 'CppTmpSlideShow.coffee'
{
  SlideShow
} = require '../lib/components/SlideShow.coffee'

frame = 0

Index = ReactComponent
  componentDidMount: ->
    window.document.onkeydown = (e) =>
      if (e.keyCode is 39)
        frame++
      else if (e.keyCode is 37)
        frame--
      if frame < 0
        frame = 0
      frame %= Slides.length
      @forceUpdate()

  render: ->
    div
      className: 'index'
      div
        style: position: 'absolute'
        frame
      SlideShow
        frame: frame

module.exports =
  Index: Index
