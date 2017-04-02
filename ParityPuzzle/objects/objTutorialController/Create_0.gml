step = 0;
tutorialBox = instance_create_depth(room_width * 3/4 + 120, room_height  * 3/4 - 20, 0, objTutorialBox); 

//disable all of the cards
swapCardDisabledState(objLevelController.cards, true);

//set 0, 0 to enabled again for the first step
objLevelController.cards[0, 0].disabled = false;