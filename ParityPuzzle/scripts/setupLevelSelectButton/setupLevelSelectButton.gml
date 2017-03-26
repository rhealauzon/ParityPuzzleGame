/// @desc sets up a level select button based on its level number
/// @arg level select button object
/// @arg level number the button is tied to

var levelSelectBtn = argument[0];
var levelNum = argument[1];

levelSelectBtn.levelNum = levelNum;
levelSelectBtn.completed = global.levels[levelNum];

if (levelNum > 1)
	levelSelectBtn.unlocked = global.levels[levelNum - 1];
//keep the first stage auto-unlocked
else
	levelSelectBtn.unlocked = true;