var numbers = [
	"Take care of your body. It's the only place you have to live.",
	"You can always improve your fitness if you keep training.",
	"To enjoy the glow of good health, you must exercise.",
	"Always do your best. What you plant now, you will harvest later.",
	"In order to succeed, we must first believe that we can."
];

var element = 0;

document.write(numbers[element]);

element++;

setInterval(quote, 86400000);

function quote(){
		$("#quote").html(numbers[element]);
		element++;
		if(element == numbers.length){
			element = 0;
		}
}
