/// @description Insert description here
// You can write your code in this editor

//Set depth
depth = -y;

//Destroy if dead
if (hp <= 0)
{
	if (instance_exists(obj_player))
	{
		obj_player.money += irandom_range(10,25);
	}
	instance_destroy();
}