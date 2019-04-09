/// @description Destroy and damage if hit enemy
// You can write your code in this editor
if (other.id != creator)
{
	other.hp -= damage;
	instance_destroy();
	if !audio_is_playing(snd_arrow_inpact){
		audio_play_sound(snd_arrow_inpact,0,false)
	}
}