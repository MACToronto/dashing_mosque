class Dashing.Pmeter extends Dashing.Widget

  @accessor 'value', Dashing.AnimatedValue

  constructor: ->
    super
    @observe 'value', (value) ->
      $(@node).find(".pmeter").val(value).trigger('change')

  ready: ->
    pmeter = $(@node).find(".pmeter")
    pmeter.attr("data-bgcolor", pmeter.css("background-color"))
    pmeter.attr("data-fgcolor", pmeter.css("color"))
    pmeter.knob()
