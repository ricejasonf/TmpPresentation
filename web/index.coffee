React = require 'react'
{
  ReactoComponent
} = require './lib/deps.coffee'
{ Index } = require './components/Index.coffee'

window.renderMain = (id) ->
  React.render Index(),
    window.document.getElementById(id)
