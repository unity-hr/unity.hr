do ($ = jQuery) ->

  $ -> new About()

  class About

    constructor: ->
      @container  = $('.page-about')
      @timeInc    = 300
      @sections   = @container.find('section')

      @activateSections()

    activateSections: ->
      currentSection = @sections.first()

      load = =>
        currentSection.addClass('is-loaded')
        unless currentSection.is(':last-child')
          setTimeout(load, @timeInc)
        currentSection = currentSection.next()

      load()
