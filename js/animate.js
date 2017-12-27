//del resize funkcije
var waitForFinalEvent = (function () {
  var timers = {};
  return function (callback, ms, uniqueId) {
    if (!uniqueId) {
      uniqueId = "Don't call this twice without a uniqueId";
    }
    if (timers[uniqueId]) {
      clearTimeout (timers[uniqueId]);
    }
    timers[uniqueId] = setTimeout(callback, ms);
  };
})();

var pause = 10000;
$(function() {
    //configuration
    var width = $(document).width(); //width okna
    var animationSpeed = 1500;
    var currentSlide = 1;
    var $slider = $('#slider');
    var $slideContainer = $slider.find('.slides');
    var $slides = $slideContainer.find('.slide');
    $('.slide').css("width", width);

    //preveri ce je okno bilo razsirjeno
    $(window).resize(function () {
    waitForFinalEvent(function(){
        width = $(document).width(); // spremeni width na nov width okna
        $('.slide').css("width", width); //prilagodi width slik
        $slideContainer.css('margin-left', currentSlide*width*(-1)); //prilagodi margin slideshova
    }, 500);
});

    setInterval(function() {
        $slideContainer.animate({'margin-left': '-=' +width}, animationSpeed, function() {
            currentSlide++;
            if(currentSlide === $slides.length){
                currentSlide = 1;
                $slideContainer.css('margin-left', 0);
            }
        });
    }, pause);
});
