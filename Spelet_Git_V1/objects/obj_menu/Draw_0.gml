/// @description Insert description here
// You can write your code in this editor
anim += mouse_wheel_down() -mouse_wheel_up();
anim += keyboard_check_pressed(vk_down) -keyboard_check_pressed(vk_up);
anim = clamp(anim,0,array_length_1d(array)-1);
anim_n = scr_reach_tween(anim_n,anim,5);
draw_set_font(fnt_ricksalagard);
for(var i=0; i<array_length_1d(array); i++){
    if(i==anim){
        draw_set_colour(c_yellow)
    }
    else{ 
        draw_set_colour(c_olive)
		
    }
    draw_text_transformed(
    x+lengthdir_x(64,(i-anim_n)*-4),
    y+lengthdir_y(100,(i-anim_n)*-60),
    array[i],1,1,mean((i-anim_n)*-10,0));
    if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space){
        if(anim==0){
            //room_goto()
        }
        else if(anim==1){
            room_goto(rm_village)
        }
        else if(anim==2){
            game_end();
        }
    }
}
