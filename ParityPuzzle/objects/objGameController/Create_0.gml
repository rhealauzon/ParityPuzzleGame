//make this a singleton essentially
if (instance_number(objGameController) > 1)
	instance_destroy(id);
	
else
{
	global.activeLevel = -1;
	global.NUM_LEVELS = 12;
	global.tutorialStep = 0;
	global.musicOn = true;
	global.levels[0] = false;
	
	var i;
	for (i = 1; i <= global.NUM_LEVELS; i++)
		global.levels[i] = false;
	
	//create a save file if it doesnt exist
	if (!saveFileExists())
		createSaveFile();
		
	//otherwise load one
	else
		loadGame();


	//create the sound controller
	instance_create_depth(0, 0, 0, objSoundController);	
}

