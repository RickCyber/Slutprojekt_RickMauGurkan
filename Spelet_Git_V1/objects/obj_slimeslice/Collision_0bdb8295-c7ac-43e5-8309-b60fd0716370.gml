/// @description Damage Lifeforms
// You can write your code in this editor

//Check if creator exists so that it can check for where to knockback
if instance_exists(creator)
{
	//Only damage other instances
	if (other.id != creator)
	{
		//Knockback
		var dir = point_direction(creator.x,creator.y,other.x,other.y)
		var xforce = lengthdir_x(knockback,dir);
		var yforce = lengthdir_y(knockback,dir);
		with (other)
		{
			physics_apply_force(x,y,xforce,yforce)
		}
		other.hp -= damage;
	}
}