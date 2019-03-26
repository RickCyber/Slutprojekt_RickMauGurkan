/// @description Rita skugga
// You can write your code in this editor


draw_sprite_ext(sprite_index,image_index,x,y+ ((sprite_height*shad)/4),shad,shad/2,0,c_dkgray,image_alpha/2)

if hittable == false{
	coluor = c_white
}
else if z <= 1{
	coluor = c_white
}

draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,0,coluor,image_alpha)

/*
draw_text(obj_player.x + 20,obj_player.y + 20, z)
draw_text(obj_player.x + 20,obj_player.y + 38, distanceTotal)
draw_text(obj_player.x + 20,obj_player.y + 56, tick)


if (jump == false){
	draw_text(obj_player.x + 40,obj_player.y + 4, "Jump = False")
}
else{
	draw_text(obj_player.x + 40,obj_player.y + 4, "Jump = True")
}

if (fas == 1)
{
	draw_text(obj_player.x + 40,obj_player.y + 36, "Fas 1")
}
else if (fas == 2)
{
	draw_text(obj_player.x + 40,obj_player.y + 36, "Fas 2")
}
else if (fas == 3)
{
	draw_text(obj_player.x + 40,obj_player.y + 36, "Fas 3")
}

if (hittable == true)
{
	draw_text(obj_player.x + 40,obj_player.y + 52, "Hittable = True")
}
else
{
	draw_text(obj_player.x + 40,obj_player.y + 52, "Hittable = False")
}

draw_text(obj_player.x + 40,obj_player.y + 68, hp)

if (res == true)
{
	draw_text(obj_player.x + 40,obj_player.y + 20,"RES == TRUE");
}
else
{
	draw_text(obj_player.x + 40,obj_player.y + 20,"RES == FALSE");
}
