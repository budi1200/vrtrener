function canv(){
var video = $('#vid').attr('url_slika');
var frame = $('#vid').attr('frames_slika');

var canvidControl = canvid({
    selector : '#canvWrapper',
    videos: {
        clip1: { src: video, frames: frame, cols: 6, fps: 6, loops: 1, onEnd: function(){
          //console.log('clip1 ended.');
          canvidControl.play('clip1');
        }},
    },
    width: 300,
    height: 400,
    loaded: function() {
        canvidControl.play('clip1');
        $('.canvid').attr('id', 'canvid');
        var can = document.getElementById("canvid");
        var canv = can.getContext("2d");
        var opis = document.getElementById("opis").innerHTML;
        var naslov = document.getElementById("naslov").innerHTML;
        var text_x = 326;
        var text_y = 61;
        var text_maxWidth = 164;
        var lineHeight = 17;
        canv.canvas.width = 500;
        canv.canvas.height = 500;
        canv.fillStyle = "#CCC";
        canv.fillRect(0, 0, 500, 500);
        canv.fillStyle = "#000";
        canv.font = "bold 16px Arial";
        canv.fillText(naslov, 25, 458);
        canv.font = "14px Arial";

        function wrapText(canv, text, x, y, maxWidth, lineHeight) {
            var words = text.split(' ');
            var line = '';
        
            for (var n = 0; n < words.length; n++) {
                var testLine = line + words[n] + ' ';
                var metrics = canv.measureText(testLine);
                var testWidth = metrics.width;
                if (testWidth > maxWidth && n > 0) {
                    canv.fillText(line, x, y);
                    line = words[n] + ' ';
                    y += lineHeight;
                } else {
                    line = testLine;
                }
            }
            canv.fillText(line, x, y);
        }
        wrapText(canv, opis, text_x, text_y, text_maxWidth, lineHeight);
        $("#plan").attr('src', '#canvid');
    }
});
}