/// @description Destroy and damage if hit enemy
// You can write your code in this editor
if (other.id != creator)
{
	other.hp -= damage;
	instance_destroy();
}