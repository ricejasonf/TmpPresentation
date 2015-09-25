{
  ReactComponent
  Route
  Link
  Syntax
  DOM: {
    h3
    div
  }
} = require '../lib/deps.coffee'

TagDispatch1 = ReactComponent
  render: ->
    div
      className: 'slide'
      h3
        className: 'title'
        'Tag Dispatch'
      Syntax
        syntax: require '../cpp/TagDispatch1.cpp'

module.exports =
  TagDispatch1: TagDispatch1
