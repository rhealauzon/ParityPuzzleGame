//called every frame to draw the button and text

//draw the first frame (non-hover or click) at x and y based on the editor
if (hover)
{
	draw_sprite(sprMenuButton, 1, x, y);
}
else
{
	draw_sprite(sprMenuButton, 0, x, y);
}

//draw the text on the button
draw_set_font(fntMain);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(70, 149, 176));

var text = "";
switch (type)
{
	case MenuButtonType.TUTORIAL:
		text = "Tutorial";
		break;
		
	case MenuButtonType.LEVEL_SELECT:
		text = "Level Select";
		break;
				
	case MenuButtonType.SETTINGS:
		text = "Settings";
		break;
	
	case MenuButtonType.QUIT:
		text = "Quit";
		break;
}

draw_text(x, y, text);

//reset all of the draw calls
draw_set_valign(fa_top);
draw_set_halign(fa_left);