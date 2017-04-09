//enum for all of the different types of buttons
enum MenuButtonType
{
	TUTORIAL,
	LEVEL_SELECT,
	SETTINGS,
	QUIT
}

// CONSTANTS //


// VARIABLES //
type = MenuButtonType.TUTORIAL;
hover = false;

//register this in the sound controller so it can make noise
gmwRegisterObject(id, global.DEFAULT_GROUP, "button");


