/// @desc Decay
image_xscale *= 0.9;
image_yscale = image_xscale;
image_alpha -= 0.025;
speed *= 0.95;
if (image_alpha == 0) instance_destroy();
depth = -y