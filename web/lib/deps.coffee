#single file to export common lib dependencies
React = require 'react'
require 'react/addons'
ReactComponent = require './ReactComponent.coffee'
Syntax = require './components/Syntax.coffee'
SyntaxSlide = require './components/SyntaxSlide.coffee'
IncrementalList = require './components/IncrementalList.coffee'

module.exports =
  ReactComponent: ReactComponent
  DOM: React.DOM
  Syntax: Syntax
  SyntaxSlide: SyntaxSlide
  IncrementalList: IncrementalList
