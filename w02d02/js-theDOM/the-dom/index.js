var listItems = ["Go out","Come back" , "Buy food" , "Eat food"];

// write append loop here

function addListItem(value) {
    var newItem = document.createElement("li");
    newItem.innerHTML = value;
    var list = document.getElementById('list');
    list.appendChild(newItem);
}


for (var i = 0; i < listItems.length; i++) {
	addListItem(listItems[i]);
}

// append loop finished


// write the class loop here

var itemList = document.getElementsByTagName("li"); 

for (var j = 0; j < itemList.length; j+=2) { 
	itemList[j].className = "even";
}

// class loop finished

// list span

var count = document.getElementById("count");

count.innerHTML = itemList.length;







// // getting elements and changing them in the DOM

// var wrapperDiv = document.getElementById("wrapper");
// console.log(wrapperDiv);

// wrapperDiv.style.backgroundColor = "blue";

// var lis = document.getElementsByTagName("li");
// console.log(lis);
// lis[1].innerHTML = "Check it out, I've only gone and bloody changed";

// // remember the difference in getElement and getElementsByTagName

// var selected = document.querySelectorAll("li.selected");

// for (var i = 0; i < selected.length; i++) {
// selected[i].style.color = "red";
// }

// // end

// // putting brand new things onto the page start

// var ptag = document.createElement('p');
// ptag.innerHTML = "Brand new p tag";
// document.body.appendChild(ptag);
