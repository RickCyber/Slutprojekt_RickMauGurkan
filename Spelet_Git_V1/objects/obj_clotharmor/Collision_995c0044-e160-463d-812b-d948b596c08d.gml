/// @description Insert description here
// You can write your code in this editor
if (obj_player.money >= 50)
{
	obj_player.hp = 50;
	obj_player.money -= 50;
	instance_destroy();
}