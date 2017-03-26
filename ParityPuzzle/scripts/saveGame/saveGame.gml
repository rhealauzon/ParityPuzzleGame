/// @desc Saves all of the game data into a JSON file.
/// @return True if the save was completed successfully, otherwise false.
var saveName = "pp_save.sav";

//delete the previous file for ease
deleteSaveFile();

//open the save file
var file = file_text_open_write(saveName);

//make sure the file was opened successfully
if (file == -1)
	return false;

// Begin the save process! //
var map = ds_map_create();

var i = 0;

//add each level's progress to the map
for (i = 1; i <= global.NUM_LEVELS; i++)
{
	ds_map_add(map, "L" + string (i), global.levels[i]);
}

//convert the map to json
var json = json_encode(map);

//write the json to the file
file_text_write_string(file, json);

//close the file and tidy up resources
ds_map_destroy(map);
file_text_close(file);


return true;
