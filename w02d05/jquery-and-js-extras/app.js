$(function(){

	// setInterval(function() {
	// 	$("ul").append($("<li></li>"));
	// }, 1000);


// for (var i = 0; i < 16; i++) {
// 	setTimeout(function() {
// 		$("ul").append($("<li></li>"));
// 	}, i * 1000);
// };


$("li").each(function(index, li) {
	setTimeout(function(){
		$(li).slideDown();

		$(li).animate({
			opacity: 0.25,
			left: "+=50",
			height: "toggle"
		}, 1500)



	}, index * 500)
})






});