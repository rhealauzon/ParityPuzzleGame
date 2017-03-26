//// @desc Creates a save file
//// @param No parameters.

var saveName = "pp_save.sav";

//create a save file by simplying opening the save file
var file = file_text_open_write(saveName);

//close it immediately for cleanliness 
file_text_close(file);