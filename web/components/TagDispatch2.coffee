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

module.exports = ReactComponent
  render: ->
    div
      className: 'slide'
      h3
        className: 'title'
        'Tag Dispatch'
      Syntax
        syntax: require '../cpp/TagDispatch2.cpp'
