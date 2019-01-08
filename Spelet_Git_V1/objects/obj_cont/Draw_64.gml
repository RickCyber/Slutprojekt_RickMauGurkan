/// @description Insert description here
// You can write your code in this editor
if (room == rm3)
{
	if (obj_boss.hp >= .1 and obj_boss.fas != 0){
		draw_healthbar(room_width/12,room_height/1.33,room_width+40,room_height/1.25,obj_boss.hp,c_dkgray,c_maroon,c_green,0,true,true)
		if (obj_boss.fas == 1){
			draw_sprite(spr_boss_head_fas1,0,room_width/12,room_height/1.3)
		}
		if (obj_boss.fas == 2){
			draw_sprite(spr_boss_head_fas2,0,room_width/12,room_height/1.3)
		}
		if (obj_boss.fas == 3){
			draw_sprite(spr_boss_head_fas3,0,room_width/12,room_height/1.3)
		}
	}
	draw_text(100, 100, "Hits: ")
	draw_text(148, 100, obj_player.hit)
}

if (room == rm6)
{
	if (obj_boss2.hp >= .1 and obj_boss2.fas != 0){
		draw_healthbar(room_width/12,room_height/1.33,room_width+40,room_height/1.25,obj_boss2.hp,c_dkgray,c_maroon,c_green,0,true,true)
		if (obj_boss2.fas == 1){
			draw_sprite(spr_boss_head_fas1,0,room_width/12,room_height/1.3)
		}
		if (obj_boss2.fas == 2){
			draw_sprite(spr_boss_head_fas2,0,room_width/12,room_height/1.3)
		}
		if (obj_boss2.fas == 3){
			draw_sprite(spr_boss_head_fas3,0,room_width/12,room_height/1.3)
		}
	}
	draw_text(100, 100, "Hits: ")
	draw_text(148, 100, obj_player.hit)
}
