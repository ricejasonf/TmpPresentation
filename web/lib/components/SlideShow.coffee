merge = require 'merge'
{
  ReactComponent
  DOM: {
    div
  }
} = require '../deps.coffee'

SlideShow = (options) -> ReactComponent
  displayName: options.displayName

  frame: ->
    frame = @props.frame
    len = options.slides.length
    if frame < 0
      frame = len + frame
    frame %= len
    frame

  slide: () ->
    slide = options.slides[@frame()]
    slide.element merge(slide.props, @props)

  render: ->
    @slide()

module.exports =
  SlideShow: SlideShow
