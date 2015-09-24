ReactComponent = require '../ReactComponent.coffee'
{ div } = require('react').DOM

Syntax = ReactComponent
  render: ->
    div
      dangerouslySetInnerHTML:
        __html: @props.syntax

module.exports =
  Syntax: Syntax
