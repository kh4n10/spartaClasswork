$(function (){
	// below gets a class using jquery
	var count = $("#count");
	// below is creating a new element that adds to the DOM
	var li = $("<li>New thing</li>");
	// below is adding the element to the DOM
	$("#list").append(li);

	var todos = ["food shop", "wash clothes", "pay bills"]

	$(todos).each(function(index, todo) {
		console.log(todo);
	})

// .html - changing text on the page & .css - changing the css on the page
$("#count").html("5").css("color", "red");;



// to do all the things in jquery; it skips the loop unlike javascript
// $("li").css("font-size", "50px");

$("li").addClass("done");

// events in jquery

// $("#myButton").click(function () {
// 	console.log("button clicked");
// });

$("#myButton").on("click", function () {
	console.log("button clicked");
});


});
