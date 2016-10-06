function ClaimForCountry (country, thing) {
var claim; 
claim = 'In the name of ' + country + " I claim this " + thing + " !";
return claim;
}

var message;

message = ClaimForCountry('Spain', 'land');
console.log(message);