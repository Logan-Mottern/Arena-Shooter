image_angle = image_angle + puffRotation;
image_xscale = puffScale;
image_yscale = puffScale;

puffScale = puffScale - .01

if puffScale < 0
{
	instance_destroy();
}
