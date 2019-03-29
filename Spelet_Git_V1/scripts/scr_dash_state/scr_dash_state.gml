///scr_dash_state

// Speedup during dash
len = spd*4;

//Get Speed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

//Create dash effect
var dash = instance_create_depth(x,y,0,obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

//Play sound
if !audio_is_playing(snd_woosh_dash){
	audio_play_sound(snd_woosh_dash,0,false)
}