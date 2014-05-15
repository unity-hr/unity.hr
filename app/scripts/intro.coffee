do ($ = jQuery) ->

  $ -> new Intro()

  class Intro

    constructor: ->
      @container  = $('.intro')
      @navigation = $('.intro-nav')
      @characters = [
        'monkee'
        'jakov'
        'matija'
        'ante'
      ]

      @activateNavigation()

    activateNavigation: ->
      @navigation.on 'click touchstart', 'a', (event) =>
        event.preventDefault()
        item      = $(event.currentTarget)
        character = item.data('character')

        for char in @characters
          @container.removeClass("is-#{char}")

        @container.addClass("is-#{character}")

        @navigation.find('.is-active').removeClass('is-active')
        item.parent().addClass('is-active')
