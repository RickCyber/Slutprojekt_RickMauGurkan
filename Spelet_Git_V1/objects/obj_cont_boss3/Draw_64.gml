/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_boss3))
{
	if (obj_boss3.sleep == false){
		draw_healthbar(90,room_height/2.4,540,room_height/2.6,obj_boss3.hp,c_dkgray,c_maroon,c_green,0,true,true)
		if (obj_boss3.fas == 1){
			draw_sprite(spr_Boss_3_ansikte_health_1,0,85,room_height/2.5)
		}
		if (obj_boss3.fas == 2){
			draw_sprite(spr_Boss_3_ansikte_health_2,0,85,room_height/2.5)
		}
		if (obj_boss3.fas == 3){
			draw_sprite(spr_Boss_3_ansikte_health_3,0,85,room_height/2.5)
		}
	}
}

if (instance_exists(obj_boss))
{
	draw_healthbar(90,room_height/2.4,540,room_height/2.6,obj_boss.hp,c_dkgray,c_maroon,c_green,0,true,true)
	if (obj_boss.fas == 1){
		draw_sprite(spr_boss_head_fas1,0,85,room_height/2.5)
	}
	if (obj_boss.fas == 2){
		draw_sprite(spr_boss_head_fas2,0,85,room_height/2.5)
	}
	if (obj_boss.fas == 3){
		draw_sprite(spr_boss_head_fas3,0,85,room_height/2.5)
	}
}

if (instance_exists(obj_boss2))
{
	draw_healthbar(90,room_height/2.4,540,room_height/2.6,obj_boss2.hp,c_dkgray,c_maroon,c_green,0,true,true)
	if (obj_boss2.fas == 1){
		draw_sprite(spr_Boss_3_ansikte_health_1,0,85,room_height/2.5)
	}
	if (obj_boss2.fas == 2){
		draw_sprite(spr_Boss_3_ansikte_health_2,0,85,room_height/2.5)
	}
	if (obj_boss2.fas == 3){
		draw_sprite(spr_Boss_3_ansikte_health_3,0,85,room_height/2.5)
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