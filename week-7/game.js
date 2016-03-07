 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Send the Spice Girls to help save Earth! It's the Spice Girls JavaScript game 
//		you never asked for, but always needed!
// Goals: Defeat the monsters, get back your spice. 
// Characters: Sporty Spice
// Objects: sportyspice, spicebugger, bossspice
// Functions: fighting system, rollDice (for randomization)

// Pseudocode
/*
	Fight Psuedo Code
	Monster is seen
	Player is asked if they want to fight or run
	IF Run
		Player has a 1-10 chance to leave. 
		IF she rolls above 5, she is successful. 
		ELSE Fight
			WHILE Player HP > 0 and Monster HP > 0 
				Player's weapon will attack (attack bonus and a roll of D4)
					Attack will subtract from monster HP. 
				Monster attacks
					attack will subtract from players HP. 
				Once Monster HP = 0
				Spice Level + 2
				HP Restored
	Return updated player stats 

	Boss Fight
	Player is asked if they want to fight or run. 
	IF Run
	Player has 1-10 chance to escape
		IF she rolls above 9,then she escapes. 
		ELSE Fight 
			WHILE Player HP > 0 && Boss HP > 0 
			Player weapon will attack (attack bonus and a roll of D4)
				Attack will subtract from Boss HP 
			Boss waits
			Player Attacks
			Boss attacks (attack bonus and roll D20)
				Attack subtracts from players HP
				WHILE Player HP > 0 && Bos HP <= 30 
					Boss will use own spice level to boost attack
						Attack =  Attack Bonus + D20 + (Spice Power times 1.5)
						Attack subtracts from Player HP 
					Player gets option to fight or use Spice Power
					

*/	
//
//
//
//

// Initial Codefunction rollDice(bottom, top) {
// function storyMode1(player){
// 	var counter = 1;
// 	console.log("------------------------------------------\n" +
// 							"-----------SPICE WORLD--------------------\n" +
// 							"The exciting return of Girl Power and the fight for SPICE!\n" +
// 		"The year is 2999 when the Spice Girl's cryogenic slumber has ended and they awaken." + 
// 		"In 1999 they couldn't save us, but now Earth needs them more than ever. We only had one promise, that they'll be there. "	+
// 		"You'll be playing as " + player.name + " today, taking on an evil enemies, so AHHHHHHHHHHHH!!!!!");
// 		normalBattle(player, spiceBugger);
// }
// function storyMode2(player){
// 	console.log("We've got something kinda funny going on. This world's spice is hidden in a far away castle"+ 
// 		" in a tower high up! It's up to you, so hi-ci-ya! Hold tight!");
// 	bossBattle(player, bossSpice);
// }



// function rollDice(bottom, top) {
// 	return Math.floor( Math.random() * ( 1 + top - bottom ) ) + bottom;
// }

// function flee(player, enemy) {
// 	var chanceToFlee = rollDice(1,10);
// 	if (chanceToFlee > 5){
// 		console.log(player.name + " was successful in fleeing. She slipped away while " +
// 			enemy.name + " looked away.");
// 	}
// 	else {
// 		console.log(player.name + " was not successful in fleeing. " + enemy.name +
// 			" ripped them to pieces.");
// 	}
// }

// function normalFight(player, enemy) {
// 	var attack = 0;
// 	var moves = [" slams to the left", " shake it to the right"];
// 	var movesRandom = moves[Math.floor(Math.random() * moves.length)];

// 	while (player.health >= 0 && enemy.health >=0) {
// 		player_attack = player.weapon.atk_power + player.weapon.roll;
// 		console.log(player.name + movesRandom + " and attacks with a strength of " + 
// 			player_attack + "!");
// 		enemy.health = enemy.health - player_attack; 
// 		console.log(enemy.name + " has been hurt! Their health is now " + 
// 			enemy.health + "!");

// 		if (enemy.health <= 0){
// 			console.log(enemy.name + " has been defeated!");
// 			break;
// 		}

// 		enemy_attack = enemy.weapon.atk_power + enemy.weapon.roll;
// 		console.log(enemy.name + " attacks with a strength of " + enemy_attack + "!");
// 		player.health = player.health - enemy_attack; 
// 		console.log(player.name + "has been hurt! Their health is now " + 
// 			player.health + "!");

// 		if (player.health <= 0){
// 			console.log(player.name + " has been defeated!");
// 			break;
// 		} 
// 	break;
// 	}
// }

// function normalBattle(player, enemy){
// 	var readline = require("readline"),
// 	rl = readline.createInterface(process.stdin, process.stdout),
// 	prefix = "Narrator> ";
// 	gamer = "> ";
// 	actionPrompt = prefix + "What do you do? Fight or flee?\n";
// 	defeat = "You've defeated the evil " + enemy.name + " !" + " Type in 'next' to proceed. \n";


// 	// Using a node module to get user input from node.js 
// 	// Source: https://gist.github.com/DTrejo/901104
// 	rl.on('line', function(line) {
// 		switch(line.trim()) {
// 			case "fight":
// 			normalFight(player, enemy);
// 			break;
// 			case "flee":
// 			flee(player, enemy);
// 			break;
// 			case "next":
// 			console.log("Let's make the headlines loud and true! Gonna save the world for you!");
// 			player.health = 100;
// 			console.log(player.name +" has been healed to " + player.health);
// 			storyMode2(player);
// 			break;
// 			default:
// 			console.log('Say what? I might have heard `' + line.trim() + '`');
// 			break;
// 		}
// 	if (player.health >= 0 && enemy.health >=0) {
// 		rl.setPrompt(actionPrompt, actionPrompt.length);
// 		rl.prompt();
// 	}
// 		else {
// 			var onlyOnce = function(){
// 				rl.setPrompt(defeat, defeat.length);
// 				rl.prompt();
// 				onlyOnce = function(){};
// 			};
// 	}
// 	});
	
// 	console.log(prefix + "A wild " + enemy.name + " has appeared!");
// 	console.log(prefix + "What do you do? Fight or flee?");
// 	rl.setPrompt(prefix, prefix.length);
// 	rl.prompt();
// }

// function bossFight(player, boss) {
// 	var attack = 0;
// 	var counter = 0;
// 	var actions = ["player", "boss", "player_bonus", "boss_bonus"];
// 	var actionRandom = actions[Math.floor(Math.random() * actions.length)];
// 	switch (actionRandom){
// 	case "player":
// 		player_attack = player.weapon.atk_power + player.weapon.roll;
// 		console.log(player.name + " attacks with a strength of " + 
// 			player_attack + "! \n");	
// 		boss.health = boss.health - player_attack; 	
// 		console.log(boss.name + " has been hurt! Their health is now " + 
// 			boss.health + "! \n");
// 		if (boss.health <= 0){
// 			console.log(boss.name + " has been defeated!");
// 			break;
// 		}
// 	break;		
// 	case "boss":	
// 	boss_attack = boss.weapon.atk_power + boss.weapon.roll;
// 	console.log(boss.name + " attacks with a strength of " + boss_attack + "!");
// 	player.health = player.health - boss_attack; 
// 	console.log(player.name + "has been hurt! Their health is now " + 
// 		player.health + "!");

// 		if (player.health <= 0){
// 			console.log(player.name + " has been defeated!");
// 			break;
// 		}
// 	break;
// 	case "player_bonus": 	
// 	if (player.spiceLevel > 0) {
// 		console.log(player.name + " shouts passionately into the evil void. " + "\n" +
// 			"'Now, don't go wasting my time! You're not the only thing I've got on my mind. " + "\n" +
// 			"My friends are with me when you ain't been around!" + "\n" +
// 			"Your precious words and promises ain't bringing me down!!'" + "\n\n" +
// 			"Using her " + player.fighting + " prowess, " + player.name + "she uses her Spice Power!");

// 		player_special_attack = (player.spiceLevel * player.weapon.atk_power) + player.weapon.roll;
// 		player.spificeLevel = 0; 
// 		console.log(player.name + " attacks with a strength of " + player_special_attack + "! \n");
// 		boss.health = boss.health - player_special_attack; 
// 		console.log(boss.name + "has been hurt! Their health is now " + 
// 			boss.health + "! \n");

// 		if (boss.health <= 0){
// 			console.log(boss.name + " has been defeated!");
// 			break;
// 		}
// 	}	else {
// 			player_attack = player.weapon.atk_power + player.weapon.roll;
// 			console.log(player.name + " attacks with a strength of " + 
// 				player_attack + "! \n");	
// 			boss.health = boss.health - player_attack; 	
// 			console.log(boss.name + " has been hurt! Their health is now " + 
// 				boss.health + "! \n");
// 			if (boss.health <= 0){
// 				console.log(boss.name + " has been defeated!");
// 				break;
// 			}
// 	}
// 	break;
// 	case "boss_bonus":
// 		if (boss.health < 30){
// 			console.log( boss.name + " winces in pain." + "\n" + 
// 				"His voice bellows, 'You will never rule this land!' He firmly stomps his " + 
// 				boss.weapon.name + " to the ground, immediately sending out a ring of fire" + "\n" +
// 				"Goodness, he's using his Spice Power!!");
// 			if (boss.spiceLevel > 0){
// 			boss_special_attack = (boss.spiceLevel * boss.weapon.atk_power) + boss.weapon.roll;
// 			boss.spiceLevel = 0; 
// 			console.log(boss.name + " attacks with a strength of " + boss_special_attack + "!");
// 			player.health = player.health - boss_special_attack; 
// 			console.log(player.name + "has been hurt! Their health is now " + 
// 				player.health + "!");
// 				if (player.health <= 0){
// 					console.log(player.name + " has been defeated!");
// 					break;
// 				}
// 			}
// 		} else {
// 			boss_attack = boss.weapon.atk_power + boss.weapon.roll;
// 			console.log(boss.name + " attacks with a strength of " + boss_attack + "!");
// 			player.health = player.health - boss_attack; 
// 			console.log(player.name + "has been hurt! Their health is now " + 
// 				player.health + "!");

// 				if (player.health <= 0){
// 					console.log(player.name + " has been defeated!");
// 					break;
// 				}	
// 		}
// 	break;
// 	default: 
// 		console.log(boss.name + " looks at you while smoldering in the shadows. \n");
// 	break;

// }

// }	

// function bossBattle(player, enemy){
// 	var readline = require("readline"),
// 	rl = readline.createInterface(process.stdin, process.stdout),
// 	prefix = "Narrator> ";
// 	gamer = "> ";
// 	actionPrompt = prefix + "What do you do? Fight or flee?\n";
// 	defeat = "You've defeated the evil " + enemy.name + " !" + " Type in 'next' to proceed";

// 	// Using a node module to get user input from node.js 
// 	// Source: https://gist.github.com/DTrejo/901104
// 	rl.on('line', function(line) {
// 		switch(line.trim()) {
// 			case "fight":
// 			bossFight(player, enemy);
// 			break;
// 			case "flee":
// 			console.log("Are you kidding! You can't run away from this big baddie!");
// 			break;
// 			case "next":
// 			endOfGame(player);
// 			break;
// 			default:
// 			console.log('Say what? I might have heard `' + line.trim() + '`');
// 			break;
// 		}
// 		if (player.health >= 0 && enemy.health >=0) {
// 		rl.setPrompt(actionPrompt, actionPrompt.length);
// 		rl.prompt();
// 	}
// 		else {
// 		rl.setPrompt(defeat, defeat.length);
// 		rl.prompt();
// 	}
// 	}).on('close', function() {
// 		console.log('Zig a zig ah!');
// 		process.exit(0);
// 	});
// 	console.log(actionPrompt);
// 	rl.setPrompt(gamer, gamer.length);
// 	rl.prompt();
// }

// function endOfGame(player){
// 	console.log("Finally the Spice World is at peace thanks to the Spice Power of " + player.name + 
// 		"Her " + player.spice + "has been returned to its proper place.\n" + 
// 		"Thank you for your hard work!\n To end this game, hold down CRTL + C ");
// }

// var sportySpice = {
// 	name: "Mel C.",
// 	spice: "Sporty Spice",
// 	fighting: "martial",
// 	health: 100,
//   spiceLevel: 5, //Maxes at 5
//   weapon: {
//   	name: "Bow Staff",
//   	atk_power: 4,
//   	roll: rollDice(1,4)
//   }

// };

// var spiceBugger = {
// 	name: "Spice Bugger",
// 	spice: "Annoying",
// 	fighting: "Teeth",
// 	health: 50, 
// 	weapon: {
// 		name: "Teeth",
// 		atk_power: 2,
// 		roll: rollDice(1,4)
// 	}
// };

// var bossSpice = {
// 	name: "???",
// 	spice: "Terror",
// 	fighting: "Slow, hard hitting",
// 	health: 100, 
// 	spiceLevel: 5,
// 	weapon: {
// 		name: "Skull Staff",
// 		atk_power: 8,
// 		roll: rollDice(1,6)
// 	}
// };



// Refactored Code
function storyMode1(player){
	var counter = 1;
	console.log("------------------------------------------\n" +
							"-----------SPICE WORLD--------------------\n" +
							"The exciting return of Girl Power and the fight for SPICE!\n" +
		"The year is 2999 when the Spice Girl's cryogenic slumber has ended and they awaken." + 
		"In 1999 they couldn't save us, but now Earth needs them more than ever. We only had one promise, that they'll be there. "	+
		"You'll be playing as " + player.name + " today, taking on an evil enemies, so AHHHHHHHHHHHH!!!!!");
		normalBattle(player, spiceBugger);
}
function storyMode2(player){
	console.log("We've got something kinda funny going on. This world's spice is hidden in a far away castle"+ 
		" in a tower high up! It's up to you, so hi-ci-ya! Hold tight!");
	bossBattle(player, bossSpice);
}



function rollDice(bottom, top) {
	return Math.floor( Math.random() * ( 1 + top - bottom ) ) + bottom;
}

function flee(player, enemy) {
	var chanceToFlee = rollDice(1,10);
	if (chanceToFlee > 5){
		console.log(player.name + " was successful in fleeing. She slipped away while " +
			enemy.name + " looked away.");
	}
	else {
		console.log(player.name + " was not successful in fleeing. " + enemy.name +
			" ripped them to pieces.");
	}
}

function caseGameOver (character){ 
	if (character.health <= 0){
		console.log(character.name + " has been defeated!");
	}
}

function basicAttack(attacker, attacked){
	attacker_attack = attacker.weapon.atk_power + attacker.weapon.roll;
	console.log(attacker.name +  " attacks with a strength of " + attacker_attack + "!");
	attacked.health = attacked.health - attacker_attack; 
	console.log(attacked.name + " has been hurt! Their health is now " + 
			attacked.health + "!");

	caseGameOver(attacked);
}

function playerAttack(player, enemy){
	var moves = [" slams to the left", " shakes it to the right"];
	var movesRandom = moves[Math.floor(Math.random() * moves.length)];
	player_attack = player.weapon.atk_power + player.weapon.roll;
	console.log(player.name + movesRandom + " and attacks with a strength of " + 
			player_attack + "!");
	enemy.health = enemy.health - player_attack; 
	console.log(enemy.name + " has been hurt! Their health is now " + 
			enemy.health + "!");

	caseGameOver(enemy); //Check if Enemy is dead
}

function enemyAttack(player, enemy){
	basicAttack(enemy, player);
}

function normalFight(player, enemy) {
	var attack = 0;

	while (player.health >= 0 && enemy.health >=0) {
		enemyAttack(player, enemy);
		playerAttack(player, enemy);
		break;
		} 
}


function normalBattle(player, enemy){
	var readline = require("readline"),
	rl = readline.createInterface(process.stdin, process.stdout),
	prefix = "Narrator> ";
	gamer = "> ";
	actionPrompt = prefix + "What do you do? Fight or flee?\n";
	defeat = "You've defeated the evil " + enemy.name + " !" + " Type in 'next' to proceed. \n";


	// Using a node module to get user input from node.js 
	// Source: https://gist.github.com/DTrejo/901104
	rl.on('line', function(line) {
		switch(line.trim()) {
			case "fight":
				normalFight(player, enemy);
			break;
			case "flee":
			flee(player, enemy);
			break;
			case "next":
			console.log("Let's make the headlines loud and true! Gonna save the world for you!");
			player.health = 100;
			console.log(player.name +" has been healed to " + player.health);
			storyMode2(player);
			break;
			default:
			console.log('Say what? I might have heard `' + line.trim() + '`');
			if (enemy.health <=0){
				console.log("It looks like you've defeated " + enemy.name +"! Type 'Next' to continue");
			}
			break;
		}
	if (player.health >= 0 && enemy.health >=0) {
		rl.setPrompt(actionPrompt, actionPrompt.length);
		rl.prompt();
	}
		else {
			var onlyOnce = function(){
				rl.setPrompt(defeat, defeat.length);
				rl.prompt();
				onlyOnce = function(){};
			};
	}
	});
	
	console.log(prefix + "A wild " + enemy.name + " has appeared!");
	console.log(prefix + "What do you do? Fight or flee?");
	rl.setPrompt(prefix, prefix.length);
	rl.prompt();
}

function bossFight(player, boss) {
	var attack = 0;
	var counter = 0;
	var actions = ["player", "boss", "player_bonus", "boss_bonus", 0, 1];
	var actionRandom = actions[Math.floor(Math.random() * actions.length)];
	switch (actionRandom){
	case "player":
		playerAttack(player, boss);
	break;		
	case "boss":	
		basicAttack(boss, player);
	break;
	case "player_bonus": 	
	if (player.spiceLevel > 0) {
		console.log(player.name + " shouts passionately into the evil void. " + "\n" +
			"'Now, don't go wasting my time! You're not the only thing I've got on my mind. " + "\n" +
			"My friends are with me when you ain't been around!" + "\n" +
			"Your precious words and promises ain't bringing me down!!'" + "\n\n" +
			"Using her " + player.fighting + " prowess, " + player.name + "she uses her Spice Power!");

		player_special_attack = (player.spiceLevel * player.weapon.atk_power) + player.weapon.roll;
		player.spificeLevel = 0; 
		console.log(player.name + " attacks with a strength of " + player_special_attack + "! \n");
		boss.health = boss.health - player_special_attack; 
		console.log(boss.name + "has been hurt! Their health is now " + 
			boss.health + "! \n");
		caseGameOver(boss);
	}	else {
			playerAttack(player, boss);
	}
	break;
	case "boss_bonus":
		if (boss.health < 30 && bos.spiceLevel > 0){
			console.log( boss.name + " winces in pain." + "\n" + 
				"His voice bellows, 'You will never rule this land!' He firmly stomps his " + 
				boss.weapon.name + " to the ground, immediately sending out a ring of fire" + "\n" +
				"Goodness, he's using his Spice Power!!");
				boss_special_attack = (boss.spiceLevel * boss.weapon.atk_power) + boss.weapon.roll;
				boss.spiceLevel = 0; 
				console.log(boss.name + " attacks with a strength of " + boss_special_attack + "!");
				player.health = player.health - boss_special_attack; 
				console.log(player.name + "has been hurt! Their health is now " + 
					player.health + "!");

					caseGameOver(player);
		} else {
				basicAttack(boss, player);
		}
	break;
	default: 
		console.log(boss.name + " looks at you while smoldering in the shadows. \n");
	break;

}

}	

function bossBattle(player, enemy){
	var readline = require("readline"),
	rl = readline.createInterface(process.stdin, process.stdout),
	prefix = "Narrator> ";
	gamer = "> ";
	actionPrompt = prefix + "What do you do? Fight or flee?\n";
	defeat = "You've defeated the evil " + enemy.name + " !" + " Type in 'next' to proceed. \n";

	// Using a node module to get user input from node.js 
	// Source: https://gist.github.com/DTrejo/901104
	rl.on('line', function(line) {
		switch(line.trim()) {
			case "fight":
			bossFight(player, enemy);
			break;
			case "flee":
			console.log("Are you kidding! You can't run away from this big baddie!");
			break;
			case "next":
			endOfGame(player);
			break;
			default:
			console.log('Say what? I might have heard `' + line.trim() + '`');
			break;
		}
		if (player.health >= 0 && enemy.health >=0) {
		rl.setPrompt(actionPrompt, actionPrompt.length);
		rl.prompt();
	}
		else {
		rl.setPrompt(defeat, defeat.length);
		rl.prompt();
	}
	}).on('close', function() {
		console.log('Zig a zig ah!');
		process.exit(0);
	});
	console.log(actionPrompt);
	rl.setPrompt(gamer, gamer.length);
	rl.prompt();
}

function endOfGame(player){
	console.log("Finally the Spice World is at peace thanks to the Spice Power of " + player.name + 
		"Her " + player.spice + "has been returned to its proper place.\n" + 
		"Thank you for your hard work!\n To end this game, hold down CRTL + C ");
}

var sportySpice = {
	name: "Mel C.",
	spice: "Sporty Spice",
	fighting: "martial",
	health: 100,
  spiceLevel: 5, //Maxes at 5
  weapon: {
  	name: "Bow Staff",
  	atk_power: 4,
  	roll: rollDice(1,4)
  }

};

var spiceBugger = {
	name: "Spice Bugger",
	spice: "Annoying",
	fighting: "Teeth",
	health: 50, 
	weapon: {
		name: "Teeth",
		atk_power: 2,
		roll: rollDice(1,4)
	}
};

var bossSpice = {
	name: "???",
	spice: "Terror",
	fighting: "Slow, hard hitting",
	health: 100, 
	spiceLevel: 5,
	weapon: {
		name: "Skull Staff",
		atk_power: 5,
		roll: rollDice(1,6)
	}
};

storyMode1(sportySpice);




storyMode1(sportySpice);
// Reflection
/*
What was the most difficult part of this challenge?
I had a lot of ideas on what to do with this game, but I had to keep in mind time and working towards an MVP
There's a few bugs that still need to be sorted:
	The boss fight, the user prompts come out looking weird. 
	Some prompts are repeating twice. 

What did you learn about creating objects and functions that interact with one another?
	I really liked creating objects for my characters because I could store everything about them, 
	and then call then with short lines of code. 
	I worked on making my functions small, and not repeating as many lines of the same actions. 

Did you learn about any new built-in methods you could use in your refactored solution? 
If so, what were they and how do they work?
	I learned about getting user prompts from the console when using node.js. I adapted an example I found
	online, and tweaked it to try and fit it to my game. There's still some bugs with it, but I was happy to find
	this solution and not use window alerts. 

How can you access and manipulate properties of objects?
	You can access them by chaning the variable name to what key in the object you want. 
*/