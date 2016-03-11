/*
Gradebook from Names and Scores

I worked on this challenge [by myself, with: Megan Swanby]
This challenge took me [2.5] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/
var students = ["Joseph", "Susan", "William", "Elizabeth"];

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ];
               
var gradebook = {};

// function toObject (array, object) {
//   for (var i = 0; i < array.length; i++)
//     object[array[i]] = {}; 
//   return object; 
// }
// toObject(students, gradebook);

// scoreCounter = 0;
// for (var student in gradebook){
//     gradebook[student]['testScore'] = scores[scoreCounter];
//   scoreCounter++;
// } 

// gradebook['addScore'] = function(name, score) {
//   gradebook[name]['testScore'].push(score);
// };

// gradebook.addScore("Susan", 80);


// var average = function(array) {
//   var sum = 0;
//   for(var i =0; i< array.length; i++) {
//     sum += array[i];
   
//   }  return (sum / array.length);
// };

// gradebook['getAverage'] = function(name) {
//   return average(name);
// };  
  
// __________________________________________
// Refactored Solution

function addStudents (arrayNames, gradebook) {
  for (var counter = 0; counter < arrayNames.length; counter++)
    gradebook[arrayNames[counter]] = {}; 
  return gradebook; 
}
addStudents(students, gradebook);


var scoreCounter = 0;
for (var student in gradebook){
  gradebook[student]['testScore'] = scores[scoreCounter];
  scoreCounter++;
  }

gradebook['addScore'] = function(name, score) {
  gradebook[name]['testScore'].push(score);
};

gradebook.addScore("Susan", 80);

var average = function(array) {
  return array.reduce( function(firstGrade,nextGrade) {
  return firstGrade + nextGrade; 
  })/ array.length; 
};    

gradebook['getAverage'] = function(name) {
  return average(name);
};

console.log(gradebook);


// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?
  Working with for..in loops is difficult, and you have to think about them differently 
  than working with Ruby enumerables. 
  
How did you iterate over nested arrays in JavaScript?
  We used for loops, but then refactored to use .reduce. Excellent find! 
  
Were there any new methods you were able to incorporate? If so, what were they 
and how did they work?
  .reduce 
  arr.reduce(callback[, initialValue])
  reduce executes the callback function once for each element present in the 
    array, excluding holes in the array, receiving four arguments: previousValue,
    currentValue, currentIndex, array. 
  What this means is that .reduce can take some type of function method were we 
  take the first and second values of the array and do things with it. In our array
  we added the first and second values together, which means it kind of goes across 
  the array in pairs. 
  If you look at the Mozilla Developer page it has some great examples of ways 
  to use this method, such as flattening arrays, and adding all of the number
  values in an array togeter. 
      https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/Reduce
*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
    && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)