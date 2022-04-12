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

if (mouse_check_button(mb_left)) && (cooldown < 1) && (weapon = 0)
{
	instance_create_layer(x, y, "ProjectileLayer", obj_projectile);
	cooldown = 8;
}
cooldown = cooldown - 1;

// Shotgun

if (mouse_check_button(mb_left)) && (cooldownShotgun < 1) && (weapon = 1) && (global.shotgunActive = true)
{
	instance_create_layer(x, y, "ProjectileLayer", obj_shotgun);
	instance_create_layer(x, y, "ProjectileLayer", obj_shotgun);
	instance_create_layer(x, y, "ProjectileLayer", obj_shotgun);
	cooldownShotgun = 30;
}
cooldownShotgun = cooldownShotgun - 1;

// Weapon Swap

if mouse_wheel_down() weapon = weapon - 1;
if mouse_wheel_up() weapon = weapon + 1;

weapon = clamp(weapon,0,global.numberWeapon);

// Game End

if instance_exists(obj_player) && !instance_exists(obj_enemy_organic1) && !instance_exists(obj_gameEnd)
{
	instance_create_layer(x, y, "ProjectileLayer", obj_gameEnd_button_prompt)
	global.gameEndReady = true;
	if (keyboard_check(vk_space)) instance_create_layer(x, y, "ProjectileLayer", obj_gameEnd);
}

// Puff Maker

if (puffTimer = 0) && (friendlyHealth < friendlyHealthMax)
{
	instance_create_layer(x, y, "Instances", obj_puff);
	puffTimer = 15 * (friendlyHealth);
}

// Health

if friendlyHealth < friendlyHealthMax
{
	puffTimer = puffTimer - 1
}

if friendlyHealth < 1
{
	room_restart();
}

// Upgrade

if (room = rm_brk_1) object_set_sprite(obj_player, spr_player_turretUpgrade);
