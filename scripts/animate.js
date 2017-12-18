$(function() {
    //configuration
    var width = $(document).width();
    var animationSpeed = 1500;
    var pause = 5000;
    var currentSlide = 1;
    var $slider = $('#slider');
    var $slideContainer = $slider.find('.slides');
    var $slides = $slideContainer.find('.slide');
    $('.slide').css("width", width);
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
