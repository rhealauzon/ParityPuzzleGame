/// @desc Loads the game data from the save file.

var saveName = "pp_save.sav";

//open the file for reading
var file = file_text_open_read(saveName);

//make sure it opened correctly even though it should...
if (file == -1)
	return false;
	
	
//decode the JSON into a map for easy parsing
var json = file_text_read_string(file);
var map = json_decode(json);


var i;
for (i = 1; i <= global.NUM_LEVELS; i++)
{
	if (!is_undefined(ds_map_find_value(map, "L" + string(i))))
		global.levels[i] = ds_map_find_value(map, "L" + string(i));
}

//tidy up resources (map & file)
ds_map_destroy(map);
file_text_close(file);

return true;