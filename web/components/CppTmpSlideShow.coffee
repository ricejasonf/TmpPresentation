{
  SlideShow
  MultiStepSlide
} = require '../lib/components/SlideShow.coffee'

{ MainTitle } = require './MainTitle.coffee'
{ WhatIsTmp } = require './WhatIsTmp.coffee'
{ TemplateSyntax1 } = require './TemplateSyntax1.coffee'
{ TemplateSyntax2 } = require './TemplateSyntax2.coffee'
{ TagDispatch1 } = require './TagDispatch1.coffee'
{ TagDispatch2 } = require './TagDispatch2.coffee'

CppTmpSlideShow = SlideShow
  displayName: 'CppTmpSlideShow'
  slides: [
    (MultiStep MainTitle, 3)...
    (MultiStep WhatIsTmp, 2)...
    TemplateSyntax1
    TemplateSyntax2
    TagDispatch1
    TagDispatch2
  ]
