if scale < 10
{
	image_xscale += power(image_xscale, 2);
	image_yscale += power(image_yscale, 2);
	
	scale += power(scale, 2);
}
if scale > 10 room_goto_next()