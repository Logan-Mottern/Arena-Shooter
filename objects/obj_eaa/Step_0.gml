y = y + 4;

if y > obj_gameEnd.y
{
	instance_create_layer(x,y,"Instances",obj_detonate);
	instance_destroy();
}
