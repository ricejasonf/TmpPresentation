{
  ReactComponent
  DOM: {
    h1
    div
  }
} = require '../lib/deps.coffee'

MainTitle = ReactComponent
  render: ->
    div
      className: 'slide'
      h1
        className: 'title long'
        'C++ Template Metaprogramming'

module.exports =
  MainTitle: MainTitle
