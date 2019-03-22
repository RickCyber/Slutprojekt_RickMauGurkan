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

if (obj_player.attack == 1)
{
	switch (obj_player.sprite_index)
	{
		case spr_big_boy_side_hookshot_animation_left:
			obj_player.sprite_index = spr_big_boy_side_sword_animation_left
			break;
			
		case spr_big_boy_side_hookshot_animation_right:
			obj_player.sprite_index = spr_big_boy_side_sword_animation_right
			break;
	}
}
else
{
	switch (obj_player.sprite_index)
	{
		case spr_big_boy_side_hookshot_animation_left:
			obj_player.sprite_index = spr_big_boy_side_bow_animation_left
			break;
			
		case spr_big_boy_side_hookshot_animation_right:
			obj_player.sprite_index = spr_big_boy_side_bow_animation_right
			break;
	}
}