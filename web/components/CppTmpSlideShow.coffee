SlideShow = require '../lib/components/SlideShow.coffee'
MultiStep = require '../lib/components/MultiStepSlide.coffee'
SyntaxSlide = require '../lib/components/SyntaxSlide.coffee'

MainTitle = require './MainTitle.coffee'
WhatIsTmp = require './WhatIsTmp.coffee'
TemplateSyntax1 = require './TemplateSyntax1.coffee'
TemplateSyntax2 = require './TemplateSyntax2.coffee'
TagDispatch1 = require './TagDispatch1.coffee'
TagDispatch2 = require './TagDispatch2.coffee'
VariadicTemplates1 = SyntaxSlide
  title: 'Variadic Templates'
  syntax: require '../cpp/VariadicTemplates1.cpp'
HanaTitle = require './HanaTitle.coffee'

FakeFunctor = SyntaxSlide
  title: "Faking the Functor"
  syntax: require '../cpp/Functor1.cpp'

HanaMaybe = SyntaxSlide
  title: "Maybe It's a Monad"
  syntax: require '../cpp/HanaMaybe.cpp'

HanaOnlyWhen = SyntaxSlide
  title: "Only When..."
  syntax: require '../cpp/HanaOnlyWhen.cpp'

HanaSfinae = SyntaxSlide
  title: "SFINAE!... God Bless You!"
  syntax: require '../cpp/HanaSfinae.cpp'

module.exports = SlideShow
  slides: [
    (MultiStep MainTitle, [1..2])...
    (MultiStep WhatIsTmp, [0..2])...
    TemplateSyntax1
    TemplateSyntax2
    TagDispatch1
    TagDispatch2
    VariadicTemplates1
    FakeFunctor
    (MultiStep HanaTitle, [1..2])...
    HanaMaybe
    HanaOnlyWhen
    HanaSfinae
  ]
