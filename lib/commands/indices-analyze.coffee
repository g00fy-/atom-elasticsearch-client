{BaseCommand} = require './base'
ListView = require '../views/list-view'
config = require '../config'


module.exports =
class IndicesAnalyze extends BaseCommand

  getAnalyzers: ->
    analyzers = []

    items = config.getCustomAnalyzers()
    for item in items
      analyzers.push {name: "Custom Analyzer: #{item}", analyzer: item}

    analyzers.push.apply(analyzers, DEFAULT_ANALYZERS)

    return analyzers

  run: ({analyzer}={})->
    if not analyzer
      items = @getAnalyzers()
      return new ListView(items,
        ({analyzer}={}) -> new IndicesAnalyze(analyzer: analyzer))

    options =
      analyzer: analyzer
      index: @index
      body: @getText()

    @client.indices.analyze(options, @showResult)


DEFAULT_ANALYZERS = [
  {name: 'Standard Analyzer: standard', analyzer: 'standard'},
  {name: 'Simple Analyzer: simple', analyzer: 'simple'},
  {name: 'Whitespace Analyzer: whitespace', analyzer: 'whitespace'},
  {name: 'Stop Analyzer: stop', analyzer: 'stop'},
  {name: 'Keyword Analyzer: keyword', analyzer: 'keyword'},
  {name: 'Pattern Analyzer: pattern', analyzer: 'pattern'},
  {name: 'Snowball Analyzer: snowball', analyzer: 'snowball'},
  {name: 'Language Analyzer: arabic', analyzer: 'arabic'},
  {name: 'Language Analyzer: armenian', analyzer: 'armenian'},
  {name: 'Language Analyzer: basque', analyzer: 'basque'},
  {name: 'Language Analyzer: brazilian', analyzer: 'brazilian'},
  {name: 'Language Analyzer: bulgarian', analyzer: 'bulgarian'},
  {name: 'Language Analyzer: catalan', analyzer: 'catalan'},
  {name: 'Language Analyzer: chinese', analyzer: 'chinese'},
  {name: 'Language Analyzer: cjk', analyzer: 'cjk'},
  {name: 'Language Analyzer: czech', analyzer: 'czech'},
  {name: 'Language Analyzer: danish', analyzer: 'danish'},
  {name: 'Language Analyzer: dutch', analyzer: 'dutch'},
  {name: 'Language Analyzer: english', analyzer: 'english'},
  {name: 'Language Analyzer: finnish', analyzer: 'finnish'},
  {name: 'Language Analyzer: french', analyzer: 'french'},
  {name: 'Language Analyzer: galician', analyzer: 'galician'},
  {name: 'Language Analyzer: german', analyzer: 'german'},
  {name: 'Language Analyzer: greek', analyzer: 'greek'},
  {name: 'Language Analyzer: hindi', analyzer: 'hindi'},
  {name: 'Language Analyzer: hungarian', analyzer: 'hungarian'},
  {name: 'Language Analyzer: indonesian', analyzer: 'indonesian'},
  {name: 'Language Analyzer: irish', analyzer: 'irish'},
  {name: 'Language Analyzer: italian', analyzer: 'italian'},
  {name: 'Language Analyzer: latvian', analyzer: 'latvian'},
  {name: 'Language Analyzer: norwegian', analyzer: 'norwegian'},
  {name: 'Language Analyzer: persian', analyzer: 'persian'},
  {name: 'Language Analyzer: portuguese', analyzer: 'portuguese'},
  {name: 'Language Analyzer: romanian', analyzer: 'romanian'},
  {name: 'Language Analyzer: russian', analyzer: 'russian'},
  {name: 'Language Analyzer: sorani', analyzer: 'sorani'},
  {name: 'Language Analyzer: spanish', analyzer: 'spanish'},
  {name: 'Language Analyzer: swedish', analyzer: 'swedish'},
  {name: 'Language Analyzer: turkish', analyzer: 'turkish'},
  {name: 'Language Analyzer: thai', analyzer: 'thai'}
]
