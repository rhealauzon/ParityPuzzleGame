if (mouse_x > bbox_left && mouse_x < bbox_right)
{
	if (mouse_y > bbox_top && mouse_y < bbox_bottom)
	{
		return true;
	}
}

return false;