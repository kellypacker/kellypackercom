# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

(($) ->
  $info = $(".slideshow_wrap li:first").find(".art-work-info").clone()
  $(".info_wrap").append($info).children("ul").css display: "block"
  $(".slideshow_wrap").responsiveSlides(
    auto: false
    pager: true
    nav: true
    prevText: "<"
    nextText: ">"
    maxwidth: "600"
    namespace: "portfolio"
  ).bind
    # Before callback
    "portfolio-before": (e) ->
    # After callback
    "portfolio-after": (e) ->
      $info = $(".portfolio1_on").find(".art-work-info").clone()
      $(".info_wrap").empty().append($info).children("ul").css display: "block"

  $(".art-work-thumb").each (i) ->
    $this = $(this)
    $(".portfolio_tabs li a:eq(" + i + ")").text("").append $this

  $(".info_trigger").click ->
    $(".info_wrap").toggle()

  $(".portfolio_tabs").wrap("<div class=\"carousel-mega-wrap\" />").wrap("<div id=\"carousel\" class=\"es-carousel-wrapper group\" />").wrap "<div class=\"es-carousel\" />"
  $("#carousel").elastislide imageW: 50
  $(".es-nav-prev").text "<"
  $(".es-nav-next").text ">"
) jQuery