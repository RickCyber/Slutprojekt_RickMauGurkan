/// @description Insert description here
// You can write your code in this editor
image_speed = 1.5;
depth = 20;
creator = noone;

//Rotate based upon direction facing
if (obj_player.face == 0)
{
    phy_rotation = 90;
}
else if (obj_player.face == 1)
{
    phy_rotation = 0;
}
else if (obj_player.face == 2)
{
    phy_rotation = -90;
}
else if (obj_player.face == 3)
{
    phy_rotation = 180;
}
audio_play_sound(snd_freez,1,false)