direction = global.planeAngle ;
direction = direction + random_range(-12, 12);
speed = 16;
image_angle = direction;

audio_sound_pitch(aud_bird_die, random_range(4.5, 5));
audio_play_sound(aud_bird_die, 0, false);
