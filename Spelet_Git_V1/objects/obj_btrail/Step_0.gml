/// @desc Decay
image_xscale *= .996;
image_yscale = image_xscale;
image_alpha -= 0.015;
speed *= 0.95;
if (image_alpha <= 0) {instance_destroy();}
depth = -y
