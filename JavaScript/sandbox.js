var userinput = prompt('Qual é sua idade sua vaca?');
var age = parseFloat(userinput);

if (age < 0){
	console.log('Sua VACA DO CARAIO como vc pode ter uma idade negativa? sua arrombada');
	age = -age;
}

alert('Your age is: ' + Math.sqrt(age));
