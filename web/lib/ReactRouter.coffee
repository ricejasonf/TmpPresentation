React = require 'react'
{
  Router
  Route
  Link
} = require 'react-router'

module.exports =
  Router: React.createFactory Router
  Route: React.createFactory Route
  Link: React.createFactory Link
