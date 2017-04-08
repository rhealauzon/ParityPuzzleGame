/// @description Insert description here
// You can write your code in this editor

//draw the box first
draw_sprite(sprTutorialBox, 0, x, y);
	

//draw the text on the box
draw_set_font(fntTutorial);
draw_set_color(make_color_rgb(70, 149, 176));
draw_set_valign(fa_center);
draw_set_halign(fa_center);


draw_text_ext(x, y - 40, message, 30, 312);

//reset all of the draw calls
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(fntMain);