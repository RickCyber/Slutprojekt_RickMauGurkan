/// @description Move camera smooth
// You can write your code in this editor
if (instance_exists(obj_player))
{
	x += (obj_player.x - x) * .1;
	y += (obj_player.y - y) * .1;
}
else
{
	game_restart();
}

