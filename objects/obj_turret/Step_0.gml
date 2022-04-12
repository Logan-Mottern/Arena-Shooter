x = obj_player.x
y = obj_player.y

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (mouse_check_button(mb_right)) && (cooldownHP < 1)
{
	instance_create_layer(x, y, layer, obj_highPowerProjectile);
	cooldownHP = 45;
}
cooldownHP = cooldownHP - 1;


