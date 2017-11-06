// write code here
 
document.addEventListener("DOMContentLoaded", function () {

	var button = document.getElementById("myButton");
	var form = document.getElementById("myForm");
	var buttons = document.getElementsByClassName("myButtons");
	var firstName = document.getElementById("firstname");

// method 1 of adding a click eventlistener
	button.addEventListener("click", function() {
		console.log(this);
	});


// method 2 of adding a click eventlistener
// button.addEventListener("click", handleClick);

// function handleClick() {
// 	console.log("seperate function was run!")
// }

	form.addEventListener("submit", function(event) {
		event.preventDefault();
		var fName = firstName.value;
		if (fName) {
			console.log(fName);
		}else {
			console.log("Please enter a name")
		}

		return this.submit();
	});

	for (var i = 0; i < buttons.length; i++) {
		buttons[i].addEventListener("click", function (){
			console.log(this.value + " clicked!");
	// can use this.getAttribute("")
		})
	}

	// for (var j = 0; j < firstName.length; i++) {
	// 	firstName[j].addEventListener("click", function() {
	// 		console.log(this.name + "please insert name")
	// 	})
	// }

});