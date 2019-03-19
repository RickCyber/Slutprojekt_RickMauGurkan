/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_boss3))
{
	if (obj_boss3.sleep == false){
		draw_healthbar(room_width/12,room_height/1.33,room_width+40,room_height/1.25,obj_boss3.hp,c_dkgray,c_maroon,c_green,0,true,true)
		if (obj_boss3.fas == 1){
			draw_sprite(spr_boss_head_fas1,0,room_width/12,room_height/1.3)
		}
		if (obj_boss3.fas == 2){
			draw_sprite(spr_boss_head_fas2,0,room_width/12,room_height/1.3)
		}
		if (obj_boss3.fas == 3){
			draw_sprite(spr_boss_head_fas3,0,room_width/12,room_height/1.3)
		}
	}
}
/*
draw_healthbar(room_width/12,room_height/1.33,room_width+40,room_height/1.25,obj_boss3.hp,c_dkgray,c_maroon,c_green,0,true,true)
		if (obj_boss3.fas == 1){
			draw_sprite(spr_boss_head_fas1,0,room_width/12,room_height/1.3)
		}
		if (obj_boss3.fas == 2){
			draw_sprite(spr_boss_head_fas2,0,room_width/12,room_height/1.3)
		}
		if (obj_boss3.fas == 3){
			draw_sprite(spr_boss_head_fas3,0,room_width/12,room_height/1.3)
		}