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
	
if (healthPoints) <= 0
{
	with(obj_score) activeScore = activeScore + 5
	audio_sound_pitch(aud_bird_die, random_range(0.8, 1.2));
	audio_play_sound(aud_bird_die, 0, false);
	instance_destroy();
}