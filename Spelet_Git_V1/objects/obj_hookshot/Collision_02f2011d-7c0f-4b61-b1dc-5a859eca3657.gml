/// @description Insert description here
// You can write your code in this editor
other.hp -= damage;
	
//Knockback
var dir = point_direction(creator.x,creator.y,other.x,other.y)
var xforce = lengthdir_x(knockback,dir);
var yforce = lengthdir_y(knockback,dir);
with (other)
{
	physics_apply_force(x,y,xforce,yforce)
}

//Destroy after it has hit
obj_player.state = scr_move_state;
obj_player.attacked = false;
instance_destroy();