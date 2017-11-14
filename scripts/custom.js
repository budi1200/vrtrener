/*var mouseX, mouseY;
$(document).mousemove(function(e) {
    mouseX = e.pageX;
    mouseY = e.pageY;
}).mouseover();
*/
function setWindow(el_id){
	var test = document.getElementById(el_id);
	test.style.display = "block";
	test.style.top = "20.5%";
	test.style.left = "50.5%";
}

function off(el_id){
	document.getElementById(el_id).style.display = "none";
}