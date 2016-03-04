
// Add the finished solution here when you receive it.
var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

// // Refactor of Part 1

function add(firstNumber, secondNumber) {
    return firstNumber + secondNumber;
};

var sum = function(arrayToSum) {
  var sumOfArray = arrayToSum.reduce(add, 0);
  return sumOfArray;
};

console.log(sum(oddLengthArray))
console.log(sum(evenLengthArray))

// // Part 1 User Story
// As a user, I see that the first function "add", sums the two variables it is given.
// The "sum" function adds all the values of an array together and it requires the "add" function to operate.
// The code works and outputs the sum of all values in a given array for the "sum" function or two variables for the "add" function.

// // Refactor of Part 2

var mean = function(arrayToAverage) {
  var averageOfArray = sum(arrayToAverage) / arrayToAverage.length;
  return averageOfArray;
};

console.log(mean(oddLengthArray))
console.log(mean(evenLengthArray))

// Part 2 user story
// As a user, I see this "mean" function works with the previous "sum" function to provide the mean or average of the given values of an array.
// By inputting, the desired array, the "mean" function will display the average of the values of the given array. 
// The code works as advertised. 

// // Refactor of Part 3
var median = function (arrayToFindMedian){
 if (arrayToFindMedian.length % 2 === 1){
   var index = Math.floor(arrayToFindMedian.length / 2)
   return arrayToFindMedian[index]}
 else
   var index = arrayToFindMedian.length / 2
   return ( (arrayToFindMedian[index-1] + arrayToFindMedian[index]) / 2)
}

console.log(median(oddLengthArray))
console.log(median(evenLengthArray))

// Part 3 User Story
// This code finds the median to a given array. 
// It uses the index of the array to find the middle-most element's value. 
// f there number of elements in the array is even, then it chooses the middle value.
// If the value of the elements in the array is odd, then it gets the average of them sum of the two middle values. 
// The only problem is if the array is not in order from smallest to greatest, then the median comes ou incorrectly. 
// It seems we have to sort the array from least to greatest somehow.  


// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)

/*
------S U M M A R Y---------
Our group was sucessful in passing all 9 tests successfully! There was a bit of 
a mixup with the arrays and where they should be placed in the code for it to 
even pass the test But they were easily relocated up to the top of the page, and
that allowed for the code to run and then for the tests to check for completeness. 
Good job team! :) 

*/