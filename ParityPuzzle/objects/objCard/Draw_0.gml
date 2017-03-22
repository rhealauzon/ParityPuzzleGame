//draw a shadow below the cards
draw_sprite_ext(sprCard, 0, x, y, 1, 1, 0, c_black, 0.7);

//draw a heart
if (cardValue == 0)
{
	draw_sprite(sprCard, 0, x, y + target_raise);
}


//draw a diamond
else if (cardValue == 1)
{
	draw_sprite(sprCard, 1, x, y + target_raise);
}
