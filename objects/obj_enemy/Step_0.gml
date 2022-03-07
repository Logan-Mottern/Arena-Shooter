/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player))
{
	if (point_distance(obj_player.x,obj_player.y,x,y) < 960)
	{
		move_towards_point(obj_player.x, obj_player.y, enemySpeed);
	}
}

image_angle = direction + 270;
	
if (healthPoints) <= 0 instance_destroy();