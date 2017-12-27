var number = [
	"Jim Rohn",
	"Pastor Maldonado",
	"Gene Tunney",
	"Og Mandino",
	"Nikos Kazantzakis"
];

var element = 0;

document.write(number[element]);

element++;

setInterval(quote_author, 86400000);

function quote_author(){
		$("#quote_author").html(number[element]);
		element++;
		if(element == number.length){
			element = 0;
		}
}
