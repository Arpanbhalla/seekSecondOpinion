(function() {
  jQuery(document).on('turbolinks:load', function() {
    $('.scroller').slick({
      dots: true,
      infinite: true,
      speed: 500,
      fade: true,
      cssEase: 'linear'
    });
    return $(".alert-error").hide().fadeIn(200).delay(4000).fadeOut(800);
  });

}).call(this);
