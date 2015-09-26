SlideShow = require '../lib/components/SlideShow.coffee'
MultiStep = require '../lib/components/MultiStepSlide.coffee'

MainTitle = require './MainTitle.coffee'
WhatIsTmp = require './WhatIsTmp.coffee'
TemplateSyntax1 = require './TemplateSyntax1.coffee'
TemplateSyntax2 = require './TemplateSyntax2.coffee'
TagDispatch1 = require './TagDispatch1.coffee'
TagDispatch2 = require './TagDispatch2.coffee'

module.exports = SlideShow
  slides: [
    (MultiStep MainTitle, [1..2])...
    (MultiStep WhatIsTmp, [0..2])...
    TemplateSyntax1
    TemplateSyntax2
    TagDispatch1
    TagDispatch2
  ]
