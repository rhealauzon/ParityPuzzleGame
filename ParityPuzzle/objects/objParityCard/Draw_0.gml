if (parityValue == 0)
{
	if (valid)
		draw_sprite(sprParityCard, 1, x, y);
	else
		draw_sprite(sprParityCard, 0, x, y);
}
else if (parityValue == 1)
{
	if (valid)
		draw_sprite(sprParityCard, 3, x, y);
	else
		draw_sprite(sprParityCard, 2, x, y);
}