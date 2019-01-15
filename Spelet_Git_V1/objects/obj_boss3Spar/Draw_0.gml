/// @description Rita skugga
// You can write your code in this editor


draw_sprite_ext(sprite_index,image_index,x,y+ ((sprite_height*shad)/4),shad,shad/2,0,c_dkgray,image_alpha)

if hittable == false{
	coluor = c_white
}
else if z <= 1{
	coluor = c_black
}

draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,0,coluor,image_alpha)


draw_text(obj_player.x + 20,obj_player.y + 20, z)
draw_text(obj_player.x + 20,obj_player.y + 38, distanceTotal)
draw_text(obj_player.x + 20,obj_player.y + 56, tick)


if (jump == false){
	draw_text(obj_player.x + 40,obj_player.y + 4, "Jump = False")
}
else{
	draw_text(obj_player.x + 40,obj_player.y + 4, "Jump = True")
}
