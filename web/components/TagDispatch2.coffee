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

TagDispatch2 = ReactComponent
  render: ->
    div
      className: 'slide'
      h3
        className: 'title'
        'Tag Dispatch'
      Syntax
        syntax: require '../cpp/TagDispatch2.cpp'

module.exports =
  TagDispatch2: TagDispatch2
