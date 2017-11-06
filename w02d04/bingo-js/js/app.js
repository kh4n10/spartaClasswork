$(function(){

$("#messages").html("Numbers have randomly been selected in deez nuts");
$("#reset").hide();
// player is dealt a hand of numbers randomly
	// make an array of numbers


	// generate  random number
	// slice a number out of the array at the random number position

var player = generatePlayerNumbers();
showPlayerNumbers(player);
yellButtonListener();

function selectNumber (numbers) {
	var randomNumber = Math.floor(Math.random() * numbers.length);
	var number = numbers.splice(randomNumber, 1)[0];
	return number;
}

function generatePlayerNumbers () {

	var numbers = [1,2,3,4,5,6,7,8,9,10];
	var player = [];
	for (var i = 0; i < 3; i++) {
		var selectedNumber = selectNumber(numbers);
		player.push(selectedNumber);
	}
	return player;
}

function showPlayerNumbers (playerNumbers) {
	$(playerNumbers).each(function(index, playerNumbers){
		makeBall(playerNumbers, $("#player1"));
	});
}

function makeBall (number, display) {
	var ball = $("<span>"+number+"</span>").addClass("ball");
	display.append(ball);
}

function yellButtonListener() {
	var yellNumbers = [1,2,3,4,5,6,7,8,9,10];

		$("#yell").on("click", function() {
		var selectedNumber = selectNumber(yellNumbers);
		makeBall(selectedNumber, $("#yelledNumbers"));
		compareBalls (selectedNumber, $("#player1"));
		$("#messages").hide();
		});



function compareBalls (selectedNumber, display) {
	var index = player.indexOf(selectedNumber)
		if(index !== -1) {
			display.children()[index].remove();
			player.splice(index, 1);

		if(player.length === 0) {
			
		}

		}
}

}

// put bingo board numbers on the page
	// .innerHTML to display it

// On click, yelled out numbers are yelled out
	// click event
	// array of starting numbers randomly selected

// Put yelled out numbers on the page by using .innerHTML

// IF yelled out number is the same as player number remove number from player

// If player has no numbers, BINGO!

// Add multiple players


});