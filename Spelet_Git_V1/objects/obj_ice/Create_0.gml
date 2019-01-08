/// @description Insert description here
// You can write your code in this editor
image_speed = 1.5;
depth = 20;
creator = noone;

//Rotate based upon direction facing
if (obj_player.sprite_index == spr_attack_right)
{
    phy_rotation = 90;
}
else if (obj_player.sprite_index == spr_attack_up)
{
    phy_rotation = 0;
}
else if (obj_player.sprite_index == spr_attack_left)
{
    phy_rotation = -90;
}
else if (obj_player.sprite_index == spr_attack_down)
{
    phy_rotation = 180;
}