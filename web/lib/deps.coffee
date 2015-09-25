#single file to export common lib dependencies
React = require 'react'
{
  Router
  Route
  Link
  Navigation
  DefaultRoute
} = require './ReactRouter.coffee'
ReactComponent = require './ReactComponent.coffee'
{
  Syntax
} = require './components/Syntax.coffee'

module.exports =
  Router: Router
  Route: Route
  Link: Link
  DefaultRoute: DefaultRoute
  Navigation: Navigation
  ReactComponent: ReactComponent
  DOM: React.DOM
  Syntax: Syntax
