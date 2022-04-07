
if (instance_exists(obj_player))
{
	if (point_distance(obj_player.x,obj_player.y,x,y) < 960)
	{
		//move_towards_point(obj_player.x, obj_player.y, enemySpeed);
		mp_potential_step(obj_player.x, obj_player.y, enemySpeed, true);
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

//Debug

draw_line_color(obj_player.x,obj_player.y,x,y,4,c_red);
