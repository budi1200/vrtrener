var mouseX, mouseY;
$(document).mousemove(function(e) {
    mouseX = e.pageX;
    mouseY = e.pageY;
}).mouseover();

function tes(){
	var test = document.getElementById("test_div");
	test.style.display = "block";
	test.style.top =  (mouseY) + 'px';
	test.style.left = (mouseX) + 'px';
	console.log(mouseX);
	console.log(mouseY);
}

function off(){
	document.getElementById("test_div").style.display = "none";
}