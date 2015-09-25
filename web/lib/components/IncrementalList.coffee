{
  ReactComponent
  DOM: {
    ul
  }
} = require '../lib/deps.coffee'

IncrementalList = ReactComponent
  render: ->
    if Array.isArray(@props.children)
      ul @props,
        (child for i, child in @props.children when i < @props.step)...
    else
      ul @props,
        @props.children

module.exports =
  IncrementalList: IncrementalList
