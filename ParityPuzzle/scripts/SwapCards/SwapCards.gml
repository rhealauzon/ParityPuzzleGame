//convert all of the arguments for ease
var card1 = argument[0];
var card2 = argument[1];

var card1_X = card1.x;
var card1_Y = card1.y;
var card1_array_R = card1.cardArray_R;
var card1_array_C = card1.cardArray_C;

//swap the card's target values so they move!
//also swap their position in the 2D array of cards
card1.target_X = card2.x;
card1.target_Y = card2.y;
card1.cardArray_R = card2.cardArray_R;
card1.cardArray_C = card2.cardArray_C;
objLevelController.cards[card1.cardArray_R, card1.cardArray_C] = card1;

card2.target_X = card1_X;
card2.target_Y = card1_Y;
card2.cardArray_R = card1_array_R;
card2.cardArray_C = card1_array_C;
objLevelController.cards[card2.cardArray_R, card2.cardArray_C] = card2;


//set the card's to unselected and reset back to before the swap
card1.selected = false;
card2.selected = false;
objLevelController.selectedCard = noone;

//decrement the number of swaps because we've swapped a card!
objLevelController.numSwapsRemaining--;

objLevelController.swapMade = true;
