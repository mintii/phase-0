
 // JavaScript Olympics

// I paired [by myself, with: Joseph Yoo] on this challenge.

// This challenge took me [2.5] hours.


// Warm Up

// Bulk Up

// PSEUDOCODE:
//   1. Create a new object
//   2. Iterate over each index...
//   4. Within our function we iterate over each athlete, and add in a win
//    property with the string of name + " won " + event "!"

// var brad = {
//   name: "Brad Walker",
//   event: "Pole Vault"
// };
// var bolt= {
//   name: "Usain Bolt",
//   event: "100m Sprint"
// };
// var reese = {
//   name: "Reese Hoffa",
//   event: "Shot Put"
// };
// var olympicArray = [brad, bolt, reese];

// function win(athlete) {
//   athlete.win = athlete.name + " won the " + athlete.event + "!";
//   console.log(athlete.win);
// }

// function add_win(array) {
//   array.forEach(win);
//   return array;
// }
// add_win(olympicArray);


// Jumble your words

// PSEUDOCODE:
//   1. Check the length of the string. 
//   2. Set a counter to match the length. 
//   3. For each character in string, add it into an  
//    array.
//   4. Stop when the counter = 0, meaning all 
//    letters are in the array. 

// var string = "Hello this is me.";

// var counter = string.length, reversedString = "";

// for (counter = string.length; counter > -1; counter --){
// reversedString += string.charAt(counter);
// }

// console.log(reversedString)

// 2,4,6,8

// PSEUDOCODE:
//  1. Take an array of numbers and pass them through a function. 
//  2. Function will will look at the value at each index. 
//  3.  If the value is even, put into a new array. 
//  4.  Else, odd values are disregard.  
//  5. Print off new array. 

// function even(array) {
//   var evenArray = [];
//   for (var index = 0; index < array.length; index ++) {
//     if (array[index] % 2 === 0) {
//        evenArray.push(array[index]);
//     }
//   }
//   return evenArray
// }

// // DRIVER CODE:
// var list = [1, 3 ,5, 72, 9, 20, 10, 22];
// console.log(even(list));


// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = "Michael Phelps";
  this.age = 29;
  this.sport = "swimming";
  this.quote = "It's medicinal I swear!";
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
    I felt like I solidified that I need to practice a lot more on JavaScript 
    and functions. I've been spending most of this weeek learning and understanding loops. 

What are constructor functions?
    Constructors help with creating objects that derive from some shared protptype. 
    The constructor will have its this variable bound to a fresh object. 
    Unless it explicitly returns another object value, this new object will be 
    retunred from the call. 
    All objects that inherit from another object also inherit a constructor 
    property. And this constructor property is simply a property (like any variable) 
    that holds or points to the constructor of the object.

How are constructors different from Ruby classes (in your research)?
    This resouce was very helpful in my research: 
    http://andrewblum.org/javascript/2015/10/23/Javascript.html
    
    When you create an instance of a Ruby class, all the methods will be available 
    to that new instance. But with JavaScript Constructors you can't do that. You need
    to create a prototype which is a JavaScript function that is available to all 
    objects of that type. 

*/