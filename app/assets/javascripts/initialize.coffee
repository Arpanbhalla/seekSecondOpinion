jQuery(document).on 'turbolinks:load', ->
  $('.scroller').slick({
      dots: true,
      infinite: true,
      speed: 500,
      fade: true,
      cssEase: 'linear'
  })

  $(".alert-error").hide().fadeIn(200).delay(4000).fadeOut(800);
