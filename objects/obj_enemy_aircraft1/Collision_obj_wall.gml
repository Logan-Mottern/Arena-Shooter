	with(obj_score) activeScore = activeScore + 5
	audio_sound_pitch(aud_bird_die, random_range(0.8, 1.2));
	audio_play_sound(aud_bird_die, 0, false);
	instance_destroy();
