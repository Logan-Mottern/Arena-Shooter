/// This code describes the actions of spr_player
/*
// Movement Axial

if (keyboard_check(vk_right)) x +=4
if (keyboard_check(vk_left)) x +=-4
if (keyboard_check(vk_down)) y +=4
if (keyboard_check(vk_up)) y +=-4

image_angle = point_direction(x, y, mouse_x, mouse_y);

*/
// Movement Directional

if (keyboard_check(ord("A"))) image_angle += 3;
if (keyboard_check(ord("D"))) image_angle += -3;

if (keyboard_check(ord("W"))) speed += 0.1;
if (keyboard_check(ord("S"))) speed += -0.1;

global.planeAngle = image_angle

direction = image_angle;
point_direction = image_angle;

speed = max(5, speed)
speed = min(10, speed)

// Shooting

if (mouse_check_button(mb_left))
{
	instance_create_layer(x, y, layer, obj_projectile);
}


