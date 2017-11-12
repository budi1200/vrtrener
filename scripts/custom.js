/*var mouseX, mouseY;
$(document).mousemove(function(e) {
    mouseX = e.pageX;
    mouseY = e.pageY;
}).mouseover();
*/
function setWindow(el_id){
	var test = document.getElementById(el_id);
	test.style.display = "block";
	//test.style.top =  (mouseY) + 'px';
	//test.style.left = (mouseX) + 'px';
	test.style.top = "49.5%";
	test.style.left = "50.5%";
//	console.log(mouseX);
//	console.log(mouseY);
}

function off(el_id){
	document.getElementById(el_id).style.display = "none";
}