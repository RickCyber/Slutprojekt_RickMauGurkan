/// @description Insert description here
// You can write your code in this editor
var dir = point_direction(x,y,other.x,other.y)
var xforce = lengthdir_x(knockback,dir);
var yforce = lengthdir_y(knockback,dir);
with (other)
{
	physics_apply_force(x,y,xforce,yforce)
}