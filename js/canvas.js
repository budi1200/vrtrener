function canv(){
var canvas = document.getElementById("canv");
var canv = canvas.getContext("2d");
var video = document.getElementById('vid');
    //console.log(video);
var opis = document.getElementById("opis").innerHTML;
    //console.log(opis);
var naslov = document.getElementById("naslov").innerHTML;
    //console.log(naslov);
var text_x = 326;
var text_y = 61;
var text_maxWidth = 164;
var lineHeight = 17;
canv.fillStyle = "#CCC";
canv.fillRect(0, 0, 500, 500);
canv.fillStyle = "#000";
canv.font = "bold 16px Arial";
canv.fillText(naslov, 10, 26);
canv.font = "14px Arial";


var canvidControl = canvid({
    selector : '#canv',
    videos: {
        clip1: { src: '../vr/myvideo.jpg', frames: 38, cols: 6, loops: 1, onEnd: function(){
          console.log('clip1 ended.');
          //canvidControl.play('clip1');
        }},
    },
    width: 500,
    height: 400,
    loaded: function() {
        canvidControl.play('clip1');
        // reverse playback
        // canvidControl.play('clip1', true);
    }
});

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

video.addEventListener('play', function () {
    var $this = this; //cache
    (function loop() {
        if (!$this.paused && !$this.ended) {
            canv.drawImage($this, 20, 45, 300, 400);
            setTimeout(loop, 1000 / 30); // drawing at 30fps
        }
    })();
}, 0);

wrapText(canv, opis, text_x, text_y, text_maxWidth, lineHeight);
}
