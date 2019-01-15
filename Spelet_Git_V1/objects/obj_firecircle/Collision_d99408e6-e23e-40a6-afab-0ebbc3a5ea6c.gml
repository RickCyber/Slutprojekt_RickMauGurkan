/// @description Insert description here
// You can write your code in this editor
//Knockback
var dir = point_direction(obj_boss3.x,obj_boss3.y,other.x,other.y)
var xforce = lengthdir_x(knockback,dir);
var yforce = lengthdir_y(knockback,dir);
with (other)
{
	physics_apply_force(x,y,xforce,yforce)
}
other.hp -= damage;

instance_destroy();