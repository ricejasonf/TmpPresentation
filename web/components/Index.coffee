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
scroll_pos = 0

initKeyboard = (update) ->
  window.document.onkeydown = (e) ->
    if (e.keyCode is 39)
      frame++
    else if (e.keyCode is 37)
      frame--
    update()

#todo i might eliminate scroll in favor of absolute positioning
#this would get rid of the scroll bar
initScroll = (update) ->
  window.scrollTo(0,0)
  doc = window.document
  doc.onscroll = (e) ->
    max = Math.max(
      doc.body.scrollHeight
      doc.body.offsetHeight
      doc.documentElement.clientHeight
      doc.documentElement.scrollHeight
      doc.documentElement.offsetHeight
    ) - window.innerHeight
    s = if doc.documentElement.scrollTop? then doc.documentElement.scrollTop else doc.body.scrollTop
    scroll_pos = if max > 0 then Math.floor(s / max * 100) else 'moo'
    #update() #too slow

module.exports = ReactComponent
  componentDidMount: ->
    update = => @forceUpdate()
    initKeyboard(update)
    initScroll(update)

  render: ->
    div
      className: 'index'
      div
        style:
          backgroundColor: 'black'
          color: '#00ff00'
          position: 'fixed'
          zIndex: 1000
          fontSize:'0.5em'
        frame
        " | "
        "scroll: #{scroll_pos}%"
      CppTmpSlideShow
        frame: frame
