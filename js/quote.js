var numbers = [
	"Take care of your body. It's the only place you have to live.",
	"You can always improve your fitness if you keep training.",
	"To enjoy the glow of good health, you must exercise.",
	"Always do your best. What you plant now, you will harvest later.",
	"In order to succeed, we must first believe that we can."
];

var elements = 0;

document.write(numbers[elements]);

elements++;

setInterval(quote, 2000);

function quote(){
		$("#quote").html(numbers[elements]);
		elements++;
		if(elements == numbers.length){
			elements = 0;
		}
}
