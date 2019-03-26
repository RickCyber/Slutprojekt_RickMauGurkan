/// @description Insert description here
// You can write your code in this editor
if (room == rm_controller)
{
	if (keyboard_check_pressed(vk_anykey))
	{
		room_goto(rm_intro);
	}
	
	if (gamepad_button_check_pressed(0, gp_start))
	{
		room_goto(rm_intro);
	}
	
	if (gamepad_button_check_pressed(0, gp_face1))
	{
		room_goto(rm_intro);
	}
	
	if (gamepad_button_check_pressed(0, gp_face2))
	{
		room_goto(rm_intro);
	}
	
	if (gamepad_button_check_pressed(0, gp_face3))
	{
		room_goto(rm_intro);
	}
	
	if (gamepad_button_check_pressed(0, gp_face4))
	{
		room_goto(rm_intro);
	}
	
	if (gamepad_button_check_pressed(0, gp_shoulderlb))
	{
		room_goto(rm_intro);
	}
	
	if (gamepad_button_check_pressed(0, gp_shoulderl))
	{
		room_goto(rm_intro);
	}
	
	if (gamepad_button_check_pressed(0, gp_shoulderr))
	{
		room_goto(rm_intro);
	}
	
	if (gamepad_button_check_pressed(0, gp_shoulderrb))
	{
		room_goto(rm_intro);
	}
}

if (gamepad_button_check_pressed(0, gp_select))
{
	game_end();
}