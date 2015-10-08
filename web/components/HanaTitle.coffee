{
  ReactComponent
  DOM: {
    h1
    small
    div
  }
} = require '../lib/deps.coffee'

module.exports = ReactComponent
  render: ->
    div
      className: 'slide'
      h1
        className: 'title'
        'Boost Hana'
        div
          className: [
            'visible'
            'invisible' unless @props.step > 1
          ].join ' '
          small null, 'Your standard library for metaprogramming'
