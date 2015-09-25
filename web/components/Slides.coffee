{
  ReactComponent
  Router
  Route
  DefaultRoute
  Link
  Syntax
  DOM: {
    h3
    div
    ul
    li
  }
} = require '../lib/deps.coffee'

slides = [
  'MainTitle'
  'WhatIsTmp'
  'TemplateSyntax1'
  'TemplateSyntax2'
  'TagDispatch1'
  'TagDispatch2'
]

components = {}
Slides = (for slide in slides
  components[slide] = require("./#{slide}.coffee")[slide])


getRoutes = ->
  routes = [
  ]
  for i, slide in slides
    routes.push Route
      path: "#slide/#{i}"
      component: components[slide]

getRouter = ->
  Router null,
    Route
      path: '/'
      getRoutes()...
    
module.exports =
  getRouter: getRouter
  components: components
  Slides: Slides
