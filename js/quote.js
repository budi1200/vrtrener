var numbers = [
	"Take care of your body. It's the only place you have to live.",
	"You can always improve your fitness if you keep training.",
	"To enjoy the glow of good health, you must exercise.",
	"Always do your best. What you plant now, you will harvest later.",
	"In order to succeed, we must first believe that we can."
];
var number = [
	"Jim Rohn",
	"Pastor Maldonado",
	"Gene Tunney",
	"Og Mandino",
	"Nikos Kazantzakis"
];

var element = Math.floor(Math.random () * numbers.length);
$("#quote").html(numbers[element]);
    switch(element){
        case 0:
            $("#quote_author").html(number[element]);
            break;
        case 1:
            $("#quote_author").html(number[element]);
            break;
        case 2:
            $("#quote_author").html(number[element]);
            break;
        case 3:
            $("#quote_author").html(number[element]);
            break;
        case 4:
            $("#quote_author").html(number[element]);
            break;
        default:
            break;
    }

