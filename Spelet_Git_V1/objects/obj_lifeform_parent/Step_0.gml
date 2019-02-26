/// @description Insert description here
// You can write your code in this editor

//Set depth
depth = -y;

//Destroy if dead

if (obj_player.hp <= 0 and room != rm_boss_3)
{
	obj_player.x = 488;
	obj_player.y = 400;
	room = rm_village;
	obj_player.hp = 100;
}
else if (obj_player.hp <= 0 and room == rm_boss_3)
{
	obj_player.x = 326;
	obj_player.y = 100;
	room = rm_level_3_3;
	obj_player.hp = 100;
}