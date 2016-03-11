// Eloquent JavaScript
// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
// var name = "Brittney";
// console.log(name);



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
/*

Introduction 
Did you learn anything new about JavaScript or programming in general?
  It was interesting learning about the history of JavaScript and the politics surrounding it.
Are there any concepts you feel uncomfortable with?
  I feel very unsure about working with constructors and properties. I think I need
  to strengthen my understanding more on objects and functions to gain clarity. 

Ch. 1: Values, Types, and Operators
Identify two similarities and two differences between JavaScript and Ruby syntax 
with regard to numbers, arithmetic, strings, booleans, and various operators.
	Numbers
		JavaScript has to keep numbers under 64 bits. Which means if you have N digit, 
			you would have up to 10^N to store the number. The number operator is both floats and 
			integers. JavaScript also considers three special numbers, Infinity and -Infinity which
			represents positive and negative infinities. And also NaN (not a number) which is a value 
			use when you try to calculate invalid things. 
		Ruby has no memory constraints. It splits its numbers into integers and floats. It will take 
			a number as an integer by default. 
	Strings
		JavaScript 
			You can only add strings together, not multiply like you can in Ruby. Adding strings 
			together in JavaScript is known as concatenation. 
		Ruby 
			Can multiply strings, which I guess is kind of  iterations. You could do: pigs * 5 to say
			"place pigs 5 times".

	Arithmetic
		JavaScript 
			Infinite, -Infinite, and NaN cannot be operated like normal numbers. So I guess you can 
			all real numbers can use PEMDAS (parenthesis, exponents, multiplication, division, addition
			and subtraction.)
		Ruby
			Numbers can also use PEMDAS, just keep in mind if you need a float, because you have to 
			type the number as 1.0 instead of 1. 
	Booleans
		JavaScript 
			Booleans behave just like Ruby. One difference it points out in Eloquent JavaScript that
			I didn't find for Ruby was that you can use equality checks on words,to evaluate if a word
			is greater or less than another word. 
				Upper case < lower case based on the Unicode Standard. 
		Ruby
			The only two objects that automatically evaluate to false is false and nil. Nil is kind of
			like null and undefined in JavaScript. It represents absence and a state of being 
			undetermined. 
	Anything else?
		JavaScript
			JavaScript has two undefined values known as null and undefined. There are used to 
			denote the absence of meaningful value. 
		Ruby
			Ruby is certainly more loosey goosey with it's values, types, and operators than JavaScript. 

Ch. 2: Program Structure
What is an expression?
	A fragment of code that produces a value. Every value is written literally.  														

What is the purpose of semicolons in JavaScript? Are they always required?
	Semicolon is how you end your statement in JavaScript. It omitted, but its very complex on when.

What causes a variable to return undefined?
	When you define a variable without giving it a value. 

Write your own variable and do something to it in the eloquent.js file. */

	// var candles = 10;
	// console.log("The number of candles I own is: " + candles + ".");
/*
What does console.log do and when would you use it? What Ruby method(s) is
this similar to?
	console.log is used as an output device it will either write out in the JavaScript console within 
	a browser or with node.js in your computer's console by using 'node.js' in front of the file name.
	This is similar to many of Ruby's output methods: print, puts, p. 

Write a short program that asks for a user to input their favorite food. After 
they hit return, have the program respond with "Hey! That's my favorite too!" 
(You will probably need to run this in the Chrome console rather than node since
node does not support prompt or alert). 
Paste your program into the eloquent.js file. */

// var question = prompt("What is your favorite food?");
// alert("Hey! That's my favorite food too!"); 

/*
Describe while and for loops
	While loops are created by first providing some check ( while (bananas <=20) {...})
	For loops will include 3 parts: initializes, checks, updates. The initialization creates a counter
	variable to keep track of how long the loop should run. The check is actual a while loop, which 
	checks if the loop has reached a certain value. Finally the update is updating the counter. 
	Example of a for loop: */

		// for (var i = Things.length - 1; i >= 0; i--) {
		// 	Things[i]
		// }

/*
What other similarities or differences between Ruby and JavaScript did you notice in this section?
	Ruby has if/else statements and while loops. Ruby doesn't have for loops, but instead some type of
	iteration or enumerable can be done over an object. 

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
*/
//--------Looping a Triangle -------
// var marker = "#";
// for (counter = 1; marker.length <= 6; marker += "#") {
// 	console.log(marker);
// }
//--------FizzBuzz--------------
// var fizz = "Fizz";
// var buzz = "Buzz"; 
// for (counter = 0; counter <= 100; counter++) {
// 	if (counter % 3 === 0 && counter % 5 === 0) {
// 		console.log(fizz + buzz);
// 	} else if (counter % 5 === 0){
// 		console.log(buzz);
// 	} else if (counter % 3 === 0){
// 		console.log(fizz);
// 	}
// 		else {
// 		console.log(counter);
// 	} 
// }
//------------Chess Board --------
// var chessBoard = "";

// for (row = 0; row < 8; row++) {
// 	for (column = 0; column < 8; column++){
// 		if ((row + column) % 2 == 0) {
// 			chessBoard += "#"; 
// 		} else {
// 			chessBoard += " ";
// 		}
// 	}
// 	chessBoard += "\n";
// }
// console.log(chessBoard);
// This challenge was the most difficult of all three. I worked on about 4 different solutions 
// before I took a peak at the answer online. 

/*
Ch. 3: Functions (Skip the sections on closure and recursion)
What are the differences between local and global variables in JavaScript? 
	Global variables are variables declared outside of any function. 
	Local variables are variables created inside of the function, including the functions parameters. 
	The difference helps in preventing accidental interference between functions. 
	
When should you use functions?
	You should use functions when you need to structure larger programs, reduce repetition, and work
	with subprograms by associate and isolation. 

What is a function declaration?
	Declaring a function as a variable. So you would use:
		var square = function (){} OR function square(){}
		They can be called on by any of the code in the scope. It breaks the pattern of the code being
		read from a top-down orientation. 

Complete the minimum exercise in the eloquent.js file.
*/
// function minimum (a, b){
// 	if (a < b){
// 		console.log(a);
// 	} else {
// 		console.log(b);
// 	}
// }

// minimum (89, 2);
/*

Ch. 4: Data Structures: Objects and Arrays
Skip the sections on the Lycanthrope's log, Computing Correlations, and sections 
from Further Arrayology to the Global Object, but read the chapter summary.

What is the difference between using a dot and a bracket to look up a property? 
Ex. array.max vs array["max"]
			The difference is how the value that is after the dot or within brackets is interpreted. When
			using a dot, the part after the dot must be a valid variable name so it can directly name the 
			property. When using square brackets the expression between the brackets is evaluated to to get
			the property name. 
			So as an example: 
				var x = "apple"; 
				var applePie = {
						apple: 0,
						cinnamon: 0,
						sugar: 0
				};
				//here we are using dot notation
				console.log(applePie.apple);  //==> 0
				// here we are using bracket notation
				console.log(applePie[x]);			//==> 0
  
Create an object called me that stores your name, age, three favorite foods, and
a quirk in your eloquent.js file.

	var me = {
		name: "Brittney",
		age: 27,
		fav_food: ["mac n cheese", "avocados", "blackberries"],
		quirk: "I know how to hula hoop!"
	};
	console.log(me);

What is a JavaScript object with a name and value property similar to in Ruby?
	Hashes! They are so similar, it seems that people use key/value quite interchangeably with JavaScript. 
	(At least from what I see on Stack Overflow.)

Functions

Complete the `minimum` exercise.

// function minimum (a, b){
// 	if (a < b){
// 		console.log(a);
// 	} else {
// 		console.log(b);
// 	}
// }

// minimum (89, 2);


Data Structures: Objects and Arrays
Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

	var me = {
		name: "Brittney",
		age: 27,
		fav_food: ["mac n cheese", "avocados", "blackberries"],
		quirk: "I know how to hula hoop!"
	};
	console.log(me);
*/