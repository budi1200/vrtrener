$(function() {

    var newHash      = "",
        $mainContent = $("#main-content"),
        $pageWrap    = $("#page-wrap"),
        baseHeight   = 0,
        $el;

    $pageWrap.height($pageWrap.height());
    baseHeight = $pageWrap.height() - $mainContent.height();

    $(".div_button").delegate("a", "click", function() {
        window.location.hash = $(this).attr("href");
        return false;
    });

    $(window).bind('hashchange', function(){

        newHash = window.location.hash.substring(1);

        if (newHash) {
            $mainContent
                .find("#guts")
                .fadeOut(200, function() {
                    $mainContent.hide().load(newHash + " #guts", function() {
                        $mainContent.fadeIn(500, function() {
                            $pageWrap.animate({
                                height: baseHeight + $mainContent.height() + "px"
                            });
                        });
                        id = 1;
                        $(".div_button a").removeClass("current");
                        $(".div_button a[href='"+newHash+"']").addClass("current");
                    });
                });
        };

    });

    $(window).trigger('hashchange');

});
