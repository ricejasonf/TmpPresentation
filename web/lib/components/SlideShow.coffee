merge = require 'merge'
{
  ReactComponent
  DOM: {
    h3
    div
    ul
    li
  }
} = require '../lib/deps.coffee'

SlideShow = (options) -> ReactComponent
  displayName: options.displayName

  frame: ->
    frame = @props.frame
    len = options.slides.length
    if frame < 0
      frame = len + frame
    frame %= len
    frame

  @slide: (props) ->
    slide = options.slides[@frame()]
    slide merge(props, @props)

  render: ->
    @slide(@props)
