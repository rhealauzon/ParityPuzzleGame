//called every frame to draw the button and text

//draw the first frame (non-hover or click) at x and y based on the editor
if (hover)
{
	draw_sprite(sprLevelSelectButton, 1, x, y);
}
else
{
	draw_sprite(sprLevelSelectButton, 0, x, y);
}

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