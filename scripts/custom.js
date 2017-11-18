/*var mouseX, mouseY;
$(document).mousemove(function(e) {
    mouseX = e.pageX;
    mouseY = e.pageY;
}).mouseover();
*/
function setWindow(el_id){
	var test = document.getElementById(el_id);
    var vid = document.getElementById("vid");
	//test.style.display = "block";
    test.style.opacity = '0.9';
	test.style.top = "20.5%";
	test.style.left = "50.5%";
    test.style.pointerEvents = 'auto';
    vid.play();
}

function off(el_id){
	var a = document.getElementById(el_id);
    var vid = document.getElementById("vid");
    a.style.opacity= '0';
    a.style.pointerEvents = 'none';
    vid.pause();
}
