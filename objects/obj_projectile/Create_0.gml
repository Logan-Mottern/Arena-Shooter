/// This code determines the actions of spr_projectile

// projectile motion

direction = global.planeAngle ;
direction = direction + random_range(-4, 4);
speed = 16;
image_angle = direction;