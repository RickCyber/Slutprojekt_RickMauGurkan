/// @description Insert description here
// You can write your code in this editor
if (obj_boss2.res == false)
{
	obj_boss2.hp -= 25;
	with (other)
	{
		instance_destroy();
	}
}