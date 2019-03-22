/// @description Insert description here 
// You can write your code in this editor

if obj_boss3.jump != true{
	part_emitter_region(part_system, part_emitter, obj_boss3.x-35, obj_boss3.x+5, (obj_boss3.y - obj_boss3.z)-25, (obj_boss3.y - obj_boss3.z)+5,
		ps_shape_diamond, ps_distr_invgaussian);
	part_emitter_burst(part_system, part_emitter, part_type, 4);
}