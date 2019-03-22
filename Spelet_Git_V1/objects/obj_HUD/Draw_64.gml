/// @description Insert description here
// You can write your code in this editor

if (room == rm_boss_3 or room == rm_final_boss)
{
	draw_healthbar(50,13,130*1.5,36*1.5,obj_player.hp,c_dkgray,c_maroon,c_green,0,true,true)
	draw_healthbar(50,43,109*1.5,66*1.5,obj_player.magicbar,c_dkgray,c_navy,c_teal,0,true,true)
	draw_healthbar(50,73,109*1.5,96*1.5,obj_player.itembar,c_dkgray,c_navy,c_purple,0,true,true)
	draw_sprite(spr_Health_bar_HUD,0,75*1.5,25*1.5);
	draw_sprite(spr_Magic_bar_HUD,0,75*1.5,55*1.5);
	draw_sprite(spr_Mobility_bar_HUD,0,75*1.5,85*1.5);
}
else
{
	draw_healthbar(50,13,130,36,obj_player.hp,c_dkgray,c_maroon,c_green,0,true,true)
	draw_healthbar(50,43,109,66,obj_player.magicbar,c_dkgray,c_navy,c_teal,0,true,true)
	draw_healthbar(50,73,109,96,obj_player.itembar,c_dkgray,c_navy,c_purple,0,true,true)
	draw_sprite(spr_Health_bar_HUD,0,75,25);
	draw_sprite(spr_Magic_bar_HUD,0,75,55);
	draw_sprite(spr_Mobility_bar_HUD,0,75,85);
}