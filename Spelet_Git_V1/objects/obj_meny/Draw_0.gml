/// @description Insert description here
// You can write your code in this editor 
scr_get_input();
anim += mouse_wheel_down() -mouse_wheel_up();
anim += keyboard_check_pressed(ord("S")) -keyboard_check_pressed(ord("W"));
anim = clamp(anim,0,array_length_1d(array)-1);
anim_n = scr_reach_tween(anim_n,anim,5);
draw_set_font(fnt_ricksalagard);
for(var i=0; i<array_length_1d(array); i++){
    if(i==anim){
        draw_set_colour(c_olive)
    }
    else{ 
        draw_set_colour(c_dkgray)
    }
    draw_text_transformed(
    x+lengthdir_x(64,(i-anim_n)*-44),
    y+lengthdir_y(100,(i-anim_n)*-24),
    array[i],1,1,mean((i-anim_n)*-44,0));
    if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or (gamepad_button_check_pressed(0,gp_face1) ){
        if(anim==0){
            room_goto(rm_controller)
        }
        else if(anim==1){
            room_goto(rm_intro)
        }
        else if(anim==2){
            game_end();
        }
    }
}