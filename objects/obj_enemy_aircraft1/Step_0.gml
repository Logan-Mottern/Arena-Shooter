if (instance_exists(obj_player))
{
	if (point_distance(obj_player.x,obj_player.y,x,y) < 960)
	{
		move_towards_point(obj_player.x, obj_player.y, enemySpeed);
	}
}

image_angle = direction;
	
if (healthPoints) <= 0
{
	with(obj_score) activeScore = activeScore + 5
	audio_sound_pitch(aud_bird_die, random_range(0.8, 1.2));
	audio_play_sound(aud_bird_die, 0, false);
	instance_destroy();
}

if (enemyCooldown = 0)
{
	instance_create_layer(x, y, "ProjectileLayer", obj_enemyProjectile);
	enemyCooldown = 30;
}
enemyCooldown = enemyCooldown - 1;

