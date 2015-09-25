React = require 'react'
{ Index } = require './components/Index.coffee'

window.renderMain = (id) ->
  React.render Index(),
    window.document.getElementById(id)
