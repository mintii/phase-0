// U3.W9:JQuery


// I worked on this challenge [with: Erica Lloyd and Wes El-Amin].
// This challenge took me [1] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})
$bodyElement = $('body');
$h1 = $('h1');
$img = $('img');
//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('body>h1').css(
	{'color': 'red',
	'border': '1px solid black',
	// 'visibility': 'hidden'
});

$('div>h1').html(
	'Rock Doves'
);
//RELEASE 4: Event Listener
  // Add the code for the event listener here


//RELEASE 5: Experiment on your own

$('img').on('mouseover', function(e){
    e.preventDefault();
    $(this).attr('src', 'http://i.imgur.com/knKDAd9.jpg');
  });

$('img').on('mouseout', function(e){
    e.preventDefault();
    $(this).attr('src', 'dbc_logo.png');
  });

$("img").click(function(){
    $(this).animate({left: '250px'}, 5000 );
});

})  // end of the document.ready function: do not remove or write DOM manipulation below this.
/*
What is jQuery?
	It is a library for JavaScript that provides more ease in document traveral 
	and manipulation. It's really popular because it takes less code to write than 
	vanilla JavaScript
What does jQuery do for you?
	The same things as JavaScript! It takes less to type. I found it easier to 
	visualize how to traverse the DOM in JQuery than with working on websites using
	vanilla JavaScript. 
What did you learn about the DOM while working on this challenge?
	It's good to be direct on what you want to specify when changing objects in 
	the DOM. For example, we were at first kind of general in pointing to the h1 
	to change, but then it messed up our code in later releases. 

*/