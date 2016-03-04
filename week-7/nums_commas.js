// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Sami Zhang.

// Pseudocode
// Create a method with an argument that takes a number
// Convert number into a string
// Check the length of the string
// IF lenght of string is less than 4, it will just return number
// ELSE reverse the string and split it into an array
// Count backward for each of the three zeros
// Insert a comma IF c to a string

// Initial Solution
function separateComma(x) {
  var stringConverter = x.toString();
  var splitString = stringConverter.split("");
  var reverseString = splitString.reverse();
  var commaIndex = 3
  while (commaIndex < reverseString.length) {
      reverseString[commaIndex] += ",";
      commaIndex += 3
    }
  reverseString.reverse();
  var comma = reverseString.join("")

  return comma
};


// console.log(separateComma(1000000000000));

// Refactored Solution
var num = 100000000000; 
console.log(num.toLocaleString());


// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? 
Did you approach the problem differently?
  I was hesitant to approach this nums comma problem because I struggled a lot 
  with it in Ruby. The approach I took was to explain my approach to the Ruby 
  challenge as well as have my partner explain her approach

What did you learn about iterating over arrays in JavaScript?
  It takes a different flow of logic to work with JavaScript. It doesn't have the
  same setup of friendly almost-English sentences. Our while loop on line 21 was
  not how I expected it to look when I thought of it while psuedocoding. 

What was different about solving this problem in JavaScript?
  I'm surprised at how much shorter we were able to program this together than 
  when I attempted it alone. I'm sure this is a great sign of learning programming 
  when I'm able to no longer find this kind of challenge as arduous. 

What built-in methods did you find to incorporate in your refactored solution?
  .toLocaleString was a gift from JavaScript God. My partner and I did not know 
  muchabout how it works, but doing some research it seems that it's a pretty 
  powerful method! It can take values and turn them into currency, or even time. 

*/