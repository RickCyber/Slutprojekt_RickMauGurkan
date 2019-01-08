/// @description Insert description here
// You can write your code in this editor

//Destroys all chains if there is no hookshot
if !instance_exists(obj_hookshot)
{
	instance_destroy();
}