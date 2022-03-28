/// This code describes the actions of spr_player

// Movement Axial

if room = rm_testing
{
	if (keyboard_check(ord("D"))) x +=4;
	if (keyboard_check(ord("A"))) x +=-4;
	if (keyboard_check(ord("S"))) y +=4;
	if (keyboard_check(ord("W"))) y +=-4;

	image_angle = point_direction(x, y, mouse_x, mouse_y);
	
	global.planeAngle = image_angle;
}

// Movement Directional

if room != rm_testing 
{
	if (keyboard_check(ord("A"))) image_angle += 3;
	if (keyboard_check(ord("D"))) image_angle += -3;

	if (keyboard_check(ord("W"))) speed += 0.1;
	if (keyboard_check(ord("S"))) speed += -0.1;

	global.planeAngle = image_angle;

	direction = image_angle;
	point_direction = image_angle;

	speed = max(2, speed);
	speed = min(10, speed);
}

// Shooting

if (keyboard_check(vk_space)) && (cooldown < 1)
{
	instance_create_layer(x, y, "ProjectileLayer", obj_projectile);
	cooldown = 3;
}
cooldown = cooldown - 1;

// Game End

if instance_exists(obj_player) && !instance_exists(obj_enemy_organic1) && !instance_exists(obj_gameEnd)
{
	instance_create_layer(x, y, "ProjectileLayer", obj_gameEnd_button_prompt)
	global.gameEndReady = true;
	if (keyboard_check(ord("X"))) instance_create_layer(x, y, "ProjectileLayer", obj_gameEnd);
}