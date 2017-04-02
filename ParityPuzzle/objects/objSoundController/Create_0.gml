// STARTING FUNCTIONALITY //

// GMWWise Initialization
global.GMW_PROFILE = true;


gmwInit();

// Set the base path
gmwSetBasePath(working_directory + "Sound/");
    

// Define the links with WWise
initializeGMW();

// Initialize the banks
global.INIT_BANK = gmwLoadBank("Init.bnk");
global.TEST_BANK = gmwLoadBank("Bank_All.bnk");

global.DEFAULT_GROUP = 1;

// Register the sound controller
gmwRegisterObject(id, global.DEFAULT_GROUP, "Sound Controller");
