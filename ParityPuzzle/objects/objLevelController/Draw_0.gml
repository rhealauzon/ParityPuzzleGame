//draw some text
draw_set_font(fntMain);
draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_text(640, 40, "Number of Swaps Remaining:" + string(numSwapsRemaining));

if (levelComplete)
{
	draw_set_font(fntLevelComplete);
	
	//draw the shadow first
	draw_set_color(c_black);
	draw_text(room_width / 2 + 10, room_height / 2 + 20, "Great job!");
	
	draw_set_color(c_aqua);
	draw_text(room_width / 2, room_height / 2, "Great job!");
	draw_set_font(fntMain);
	draw_set_color(c_white);
}


//reset all of the draw calls
draw_set_valign(fa_top);
draw_set_halign(fa_left);