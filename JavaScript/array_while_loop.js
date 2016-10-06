var card  = ['Diamond', 'Spade', 'Heart', 'Club'];
var currentcard = 'Diamond';

while (currentcard != 'Spade'){
	console.log(currentcard);

var numbercardmath = Math.floor(Math.random() * 4);

currentcard = card[numbercardmath];


}

console.log('Found a Spade');