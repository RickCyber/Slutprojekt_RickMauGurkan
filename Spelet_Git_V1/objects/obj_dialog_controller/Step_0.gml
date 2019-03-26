/// @description Get our dialog line

///Allow the use to press any key to go forward
var next = false;
if( keyboard_check_pressed(vk_anykey) ) next = true;
if(gamepad_button_check_pressed(0,gp_face1) ) next = true;

scr_get_dialog( next );
