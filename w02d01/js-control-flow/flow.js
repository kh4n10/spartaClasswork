// var money = prompt ("How much money?");

// var drinks = prompt ("How many drinks?");

// var crisps = prompt ("Are the crisps free? write 'yes' or 'no'")


// if (money > 10 && drinks < 3) {
// 	console.log("buy another drink");
// } else if (money > 5 || crisps === yes) {
// 	console.log("buy crisps");
// } else {
// 	console.log("go home");
// }


var name = "steve";

if (name === "bob") {
	console.log("hi bob");
} else if (name === "tim") {
	console.log("yo tim");
} else if (name === "steve") {
	console.log("aight steve-o");
} else{
	console.log ("hello faceless one");
}

switch (name) {
	case "bob":
		console.log("hi bob");
		break;
	case "tim":
		console.log("yo tim");
		break;
	case "steve":
		console.log("aight steve-o");
		break;
	default:
		console.log("hello faceless one");
}