/// @description Insert description here
// You can write your code in this editor
if (room == rm_boss_3)
{
	obj_player.x = 488;
	obj_player.y = 400;
	room = rm_village;
}
else if (room == rm3)
{
	obj_player.x = 720;
	obj_player.y = 576;
	room = rm6;
}
else
{
	obj_player.x = 488;
	obj_player.y = 400;
	room = rm_village;
}