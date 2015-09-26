{
  SlideShow
} = require '../lib/components/SlideShow.coffee'
MultiStep = require '../lib/components/MultiStepSlide.coffee'

{ MainTitle } = require './MainTitle.coffee'
{ WhatIsTmp } = require './WhatIsTmp.coffee'
{ TemplateSyntax1 } = require './TemplateSyntax1.coffee'
{ TemplateSyntax2 } = require './TemplateSyntax2.coffee'
{ TagDispatch1 } = require './TagDispatch1.coffee'
{ TagDispatch2 } = require './TagDispatch2.coffee'

module.exports = SlideShow
  displayName: 'CppTmpSlideShow'
  slides: [
    (MultiStep MainTitle, [1..3])...
    (MultiStep WhatIsTmp, [1..2])...
    TemplateSyntax1
    TemplateSyntax2
    TagDispatch1
    TagDispatch2
  ]
