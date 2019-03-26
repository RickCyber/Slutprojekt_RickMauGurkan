/// @description Insert description here 
// You can write your code in this editor

if (instance_exists(obj_boss3))
{
	if obj_boss3.jump != true{
		part_emitter_region(part_system, part_emitter, obj_boss3.x-45, obj_boss3.x+15, (obj_boss3.y - obj_boss3.z)-30, (obj_boss3.y - obj_boss3.z)+20,
			ps_shape_diamond, ps_distr_invgaussian);
		part_emitter_burst(part_system, part_emitter, part_type, 4);
	}
}
else
{
	instance_destroy();
}