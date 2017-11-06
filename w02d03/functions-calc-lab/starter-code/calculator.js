// var tryagain = true;

// // Bonus, keep looping until we say stop
// while (tryagain) {
    


//     // create an empty answer variable
//     var answer = null;

    // check all the options and perform the actions





        // else { // didn't match any of the options
    
        //   alert('Sorry, that option was not valid');
    
        // }

    // // only print the answer if we calculated one
    // if(answer) alert(answer);


    // // should we continue. "" is falsey "q" is truthy
    // tryagain = !prompt('Enter to continue, or (q)uit');

  // }
      var choice = prompt("Select your choice (a)dd (s)ubtract (d)ivide (m)ultiply (sq)uare root (p)ower");
    
//     // get the user inputs
    var value1 = parseFloat(prompt('enter first value')); // parseFloat to turn the string to a decimal number
    var value2 = parseFloat(prompt('enter the second value'));

  function userInput(choice) {

  }

  function addition(value1, value2) {
      return value1 + value2;
  }


  function subtraction(value1, value2) {
    return value1 - value2;
  }

  function multiplication(value1, value2) {
    return value1 * value2;
  }

  function division(value1, value2) {
    return value1 / value2;
  }


  function raiseToThePower(value1, value2) {
    return Math.pow(value1, value2);
  }

  function squareRoot(value1) {
    return Math.sqrt(value1);
  }

function run(choice, value1, value2) {

    if (choice === "a") {
       alert(addition(value1, value2));
    }else if (choice === "s") {
      alert(subtraction(value1, value2));
    }else if (choice === "m") {
      alert(multiplication(value1, value2));
    }else if (choice === "d") {
      alert(division(value1, value2));
    }else if (choice === "sq"){
      alert(squareRoot(value1));
    }else if (choice === "p") {
      alert(raiseToThePower(value1, value2));
    }
}

run(choice, value1, value2);









