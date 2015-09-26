#single file to export common lib dependencies
React = require 'react'
require 'react/addons'
ReactComponent = require './ReactComponent.coffee'
{
  Syntax
} = require './components/Syntax.coffee'
IncrementalList = require './components/IncrementalList.coffee'

module.exports =
  ReactComponent: ReactComponent
  DOM: React.DOM
  Syntax: Syntax
  IncrementalList: IncrementalList
