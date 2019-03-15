/// @description Variablar
//De jag andvänder
sleep = true
fas = 0
hp = 100
spd = 4
jump = false
dead = false
collition = false
alarm[1] = 400
tick = 0
hit = 0
inwater = 0
hittable = false
firecircle = true
flamepos = 0;
res = false
coluor = c_white;
knockback = 1000;
//Gammalt, Men andvänder vissa
xx = obj_boss3.phy_position_x
yy = obj_boss3.phy_position_y

global.tdeactive = 0

image_speed = 0

x_spd = 0
y_spd = 0
z_spd = 0

xy_spd_max = 4
z_spd_max = 6

z = 0
z_max = 80

shad = 1
zjump = false

targetX = obj_player.phy_position_x;
targetY = obj_player.phy_position_y;
distanceTotal = point_distance(x,y,targetX,targetY);
dir = point_direction(x,y,targetX,targetY);

if (room == rm_boss_3)
{
	scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_boss_text);
	obj_player.state = scr_freeze_state;
	switch (obj_player.sprite_index)
	{
		case spr_big_boy_side_bow_animation_left:
			obj_player.sprite_index = spr_big_boy_side_bow_breath_left;
			break;
		
		case spr_big_boy_side_bow_animation_right:
			obj_player.sprite_index = spr_big_boy_side_bow_breath_right;
			break;
			
		case spr_big_boy_side_sword_animation_left:
			obj_player.sprite_index = spr_big_boy_side_sword_breath_left;
			break;
		
		case spr_big_boy_side_sword_animation_right:
			obj_player.sprite_index = spr_big_boy_side_sword_breath_right;
			break;
	}
}