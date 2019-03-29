///scr_fall_state

// Spin and get smaller while falling
phy_rotation += 7.5;
image_xscale -= .0165;
image_yscale -= .0165;

if obj_player.phy_rotation != 0{
	if !audio_is_playing(snd_fall){
		audio_play_sound(snd_fall,0,false)
	}
}