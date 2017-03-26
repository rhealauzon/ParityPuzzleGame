/// @desc Handles all of the end level logic including saving of progress.
/// @arg 0 - The level num that was just completed

var levelNum = argument[0];

//update the level progress array
global.levels[levelNum] = true;

//save the data to the file
saveGame();

//move back to level select
room_goto(rmLevelSelect);