/*var mouseX, mouseY;
$(document).mousemove(function(e) {
    mouseX = e.pageX;
    mouseY = e.pageY;
}).mouseover();
*/
var fs = false;

function checkVR(){
    document.querySelector('a-scene').addEventListener('enter-vr', function () {
    console.log("ENTERED VR");
    fs = true;
});
}

function setWindow(el_id, vr_id, vr_id2) {
    if(fs){
        var el = document.querySelector('#' + vr_id);
        el.setAttribute("visible", true);
        var el2 = document.querySelector('#' + vr_id2);
        el2.setAttribute("visible", true);
    }else if(!fs){
        var test = document.getElementById(el_id);
        var vid = document.getElementById("vid");
        test.style.opacity = '0.9';
        test.style.pointerEvents = 'auto';
        vid.play();
    }
}

function off(el_id) {
    var a = document.getElementById(el_id);
    var vid = document.getElementById("vid");
    a.style.opacity = '0';
    a.style.pointerEvents = 'none';
    vid.pause();
}

/*function setVR(el_id) {
    var el = document.querySelector('#' + el_id);
    el.setAttribute("visible", true);
}*/

function clearVR(el_id) {
    var el = document.querySelector('#' + el_id);
    el.setAttribute("visible", false);
}
