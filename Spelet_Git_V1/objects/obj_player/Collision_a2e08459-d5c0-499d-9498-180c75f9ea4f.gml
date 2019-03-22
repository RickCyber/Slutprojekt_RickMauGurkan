/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
if (room == rm_boss_3)
{
	amulet1 = true;
	instance_create_depth(544,550,depth,obj_teleport);
}
else if (room == rm6)
{
	amulet2 = true;
	instance_create_depth(x+150,y,depth,obj_teleport);
}
else if (room == rm_final_boss)
{
	amulet2 = true;
	instance_create_depth(x+150,y,depth,obj_teleport);
}
else
{
	amulet1 = true;
}