step = 0;
tutorialBox = instance_create_depth(room_width / 2, room_height / 2, -1, objTutorialBox); 

//disable all of the cards
swapCardDisabledState(objLevelController.cards, true);

//set 0, 0 to enabled again for the first step
objLevelController.cards[0, 0].disabled = false;