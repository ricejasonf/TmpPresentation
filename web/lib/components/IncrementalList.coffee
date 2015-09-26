{
  DOM: {
    ul
  }
} = require 'react'
ReactComponent = require '../ReactComponent.coffee'

module.exports = ReactComponent
  render: ->
    if Array.isArray(@props.children)
      ul @props,
        (child for child, i in @props.children when i < @props.step)...
    else
      ul @props,
        @props.children
