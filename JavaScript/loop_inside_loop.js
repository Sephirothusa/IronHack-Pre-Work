var myPlaces = ['Rio de Janeiro', 'Tokyo', 'NYC'];
var myFriendsPlaces = ['Sao Paulo', 'San Francisco', 'Tokyo'];

for (var i = 0; i < myPlaces.length; i++){
	console.log(myPlaces[i]);
	for (var j = 0; j < myFriendsPlaces.length; j++){
		console.log(myFriendsPlaces[j]);

		if (myPlaces[i] === myFriendsPlaces[j]){
			console.log('Match: ' + myPlaces[i]);
		}
	}
}