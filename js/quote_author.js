var numbers = [
	"Jim Rohn",
	"Pastor Maldonado",
	"Gene Tunney",
	"Og Mandino",
	"Nikos Kazantzakis"
];

var element = 0;

document.write(numbers[element]);

element++;

setInterval(quote_author, 2000);

function quote_author(){
		$("#quote_author").html(numbers[element]);
		element++;
		if(element == numbers.length){
			element = 0;
		}
}
