
// get the user inputs
var calc = prompt('which calculator (Ba)sic or BMI?')
var answer;

if(calc ==="Ba" || calc ==="BMI"){


  var value1 = prompt('enter first value'); 
  var value2 = prompt('enter the second value');
  var choice = prompt('Choose your action (a)dd (s)ubtract (m)ultiply (d)ivide (sq)uare root (only uses value 1) (p)ower (uses value 1 as base value and value 2 as the power') || "a";
  

	switch (choice) {
		case "a":
			answer = parseFloat(value1) + parseFloat(value2);
			console.log(answer);
			break;

		case "s":
			answer = value1 - value2;
			console.log(answer);
			break;

		case "m":
			answer = value1 * value2;
			console.log(answer);
			break;

		case "d":
			answer = value1 / value2;
			console.log(answer);
			break;

		case "sq":
			answer = Math.sqrt(value1);		
			console.log(answer);
			break;

		case "p":
			answer = Math.pow (value1, value2);
			console.log(answer);
			break;

		default:
			answer = parseFloat(value1) + parseFloat(value2);
			console.log(answer);

	}
} else {
	var height = prompt("Enter height in metres")
	var weight = prompt("Enter weight in kg")
	answer = weight/(height*height)
	console.log(answer);
}