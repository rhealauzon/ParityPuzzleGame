//draw a shadow below the cards
draw_sprite_ext(sprCard, 0, x, y, 1, 1, 0, c_black, 0.7);

//draw the card
if (!disabled)
	draw_sprite_ext(sprCard, cardValue, x, y + target_raise, 1, 1, 0, c_white, 1);
else
	draw_sprite_ext(sprCard, cardValue, x, y + target_raise, 1, 1, 0, c_gray, 1);