//draw some text

draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_text(640, 120, "Number of Swaps Remaining:" + string(numSwapsRemaining));

if (levelComplete)
	draw_text(640, 700, "You win!");


//reset all of the draw calls
draw_set_valign(fa_top);
draw_set_halign(fa_left);