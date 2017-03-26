//called every frame to draw the button and text

if (unlocked)
	draw_sprite(sprLevelSelectButton, 0, x, y);
else if (completed)
	draw_sprite(sprLevelSelectButton, 1, x, y);
else if (!unlocked)
	draw_sprite(sprLevelSelectButton, 2, x, y);
	

//draw the text on the button
draw_set_font(fntMain);
draw_set_color(c_blue);
draw_set_valign(fa_center);
draw_set_halign(fa_center);


draw_text(x, y, levelNum);

//reset all of the draw calls
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);