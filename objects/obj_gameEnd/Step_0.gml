image_angle = image_angle + 1;

time = time - 1;

if time < 1 instance_create_layer(x,y,"Instances",obj_detonate);

if time < 0 instance_destroy();

	