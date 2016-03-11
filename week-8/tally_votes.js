// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Tomasz Sok 
// This challenge took me [6] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// console.log(votes["Alex"]["president"]);

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}
/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
1. Iterate over the objects votes while pushing them into the object 
    voteCount. 
    1. Using a for..in 
2. Once voteCount is filled, we iterate over it,and leave the largest    
    values.
3. Assign the key of votecount to the corresponding values of the   
  officers object.
4. Print out officers object.
*/
// __________________________________________
// Initial Solution
// function collectAndSort(object)

// function collectAndSort(){
//   for (var voter in votes) {
//     var ballot = votes[voter];

//     for (var position in ballot){
//       var nominee = ballot[position]
//http://stackoverflow.com/a/684693 "Always make use of the hasOwnProperty method to determin if the current property in iteration is really a property of the object you're checking on.
//       if (voteCount[position].hasOwnProperty(nominee)){
//           voteCount[position][nominee]++;
//       } else {
//           voteCount[position][nominee] = 1
//       }
//     }
//   }
//   return voteCount;
// }
// collectAndSort(votes);

// function declareWinner(){
//   for (var position in voteCount){
//     var runners = voteCount[position];
//     var counts = 0;
  
//     for (var votes in runners){
//       if (runners[votes] > counts){
//           counts = runners[votes];
//           var winner = votes; 
//       }
//     } 
//     officers[position] = winner;
//   }
//     console.log(officers);
// }

// declareWinner(collectAndSort);


// __________________________________________
// Refactored Solution

function collectAndSort(){
  for (var voter in votes) {
    var ballot = votes[voter];

    for (var position in ballot){
      var nominee = ballot[position]
      
      
      if (voteCount[position].hasOwnProperty(nominee)){
          voteCount[position][nominee]++;
        
      } else {
          voteCount[position][nominee] = 1
      }
    }
  }
  return voteCount;
}
collectAndSort(votes);

function declareWinner(){
  for (var position in voteCount){
    var runners = voteCount[position];
    var counts = 0;
  
    for (var nominee in runners){
      if (runners[nominee] > counts){
          counts = runners[nominee];
          var winner = nominee;
      }
    }
          officers[position] = winner;
  }
}

declareWinner(collectAndSort);




// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
  Approaching them in the same manner as we did with Ruby was a terrible 
  idea because it lead to a lot of confusion. Instead, you need to use 
  one for..in loop  to go into the key and value of the object and save that in 
  a variable, and then use the next for..in loop to access the next key and value 
  and then save that into another variable. 
  Next, if you want to loop through the values you have selected, you don't use the
  same for..in to loop through. Instead you need some sort of if/else statement
  that checks if the key .hasOwnProperty. 

Were you able to find useful methods to help you with this?
  Yes, the StackOverflow example that's posted on the challenge page was helpful.
  There was another page that used the same kind of program but I found it detailed
  the approach with a bit more explanation. 
  http://stackoverflow.com/a/684693

What concepts were solidified in the process of working through this challenge?
    I feel confident on the specific challenge we worked on today. If I were asked
    to do this again in the future I would know how to best approach the problem. 

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)