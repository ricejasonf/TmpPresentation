#single file to export common lib dependencies
React = require 'react'
{
  Router
  Route
  Link
} = require './ReactRouter.coffee'
ReactComponent = require './ReactComponent.coffee'
{
  Syntax
} = require './components/Syntax.coffee'

module.exports =
  Router: Router
  Route: Route
  Link: Link
  ReactComponent: ReactComponent
  DOM: React.DOM
  Syntax: Syntax
