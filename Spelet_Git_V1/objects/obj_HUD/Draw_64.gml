/// @description Insert description here
// You can write your code in this editor

if (room == rm_boss_3 or room == rm_final_boss)
{
	display_set_gui_size(camera_get_view_width(view_camera[0])/1.5, camera_get_view_height(view_camera[0])/1.5);
	draw_healthbar(52,18,135,44,obj_player.hp,c_dkgray,c_maroon,c_green,0,true,true)
	draw_healthbar(52,50,115,76,obj_player.magicbar,c_dkgray,c_navy,c_teal,0,true,true)
	draw_healthbar(52,82,115,108,obj_player.itembar,c_dkgray,c_navy,c_purple,0,true,true)
	draw_sprite(spr_Health_bar_HUD,0,78,32);
	draw_sprite(spr_Magic_bar_HUD,0,78,32*2);
	draw_sprite(spr_Mobility_bar_HUD,0,78,32*3);
	scr_textoutline(83, 24, c_black, c_white, obj_player.hp)
	scr_textoutline(73, 56, c_black, c_white, obj_player.magicbar)
	scr_textoutline(73, 88, c_black, c_white, obj_player.itembar)
}
else
{
	display_set_gui_size(camera_get_view_width(view_camera[0])/1, camera_get_view_height(view_camera[0])/1);
	draw_healthbar(52,18,135,44,obj_player.hp,c_dkgray,c_maroon,c_green,0,true,true)
	draw_healthbar(52,50,115,76,obj_player.magicbar,c_dkgray,c_navy,c_teal,0,true,true)
	draw_healthbar(52,82,115,108,obj_player.itembar,c_dkgray,c_navy,c_purple,0,true,true)
	draw_sprite(spr_Health_bar_HUD,0,78,32);
	draw_sprite(spr_Magic_bar_HUD,0,78,32*2);
	draw_sprite(spr_Mobility_bar_HUD,0,78,32*3);
	scr_textoutline(83, 24, c_black, c_white, obj_player.hp)
	scr_textoutline(73, 56, c_black, c_white, obj_player.magicbar)
	scr_textoutline(73, 88, c_black, c_white, obj_player.itembar)
}
