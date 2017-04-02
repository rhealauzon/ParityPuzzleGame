/// @description Draws the sprite for the musci button
// You can write your code in this editor

if (global.musicOn)
	draw_sprite(sprMusic, 0, x, y);
else
	draw_sprite(sprMusic, 1, x, y);
