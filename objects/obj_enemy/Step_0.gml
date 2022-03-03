/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, enemySpeed);
}

image_angle = direction + 270;
	
if (healthPoints) <= 0 instance_destroy();