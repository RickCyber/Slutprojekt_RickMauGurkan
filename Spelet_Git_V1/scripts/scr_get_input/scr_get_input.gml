///scr_get_input
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
up_key = keyboard_check(ord("W"));
dash_key = keyboard_check_pressed(vk_shift);
switch_key = keyboard_check_pressed(ord("Q"));
attack_key = keyboard_check_pressed(ord("J"));
hook_key = keyboard_check_pressed(ord("K"));
ice_key = keyboard_check_pressed(ord("L"));

//Get axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

//Set up gamepad if connected
if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0,.35);
	xaxis = gamepad_axis_value(0, gp_axislh);
	yaxis = gamepad_axis_value(0, gp_axislv);
	dash_key = gamepad_button_check_pressed(0, gp_shoulderlb);
	switch_key = gamepad_button_check_pressed(0, gp_shoulderrb);
	attack_key = gamepad_button_check_pressed(0, gp_face1);
	hook_key = gamepad_button_check_pressed(0, gp_face3);
	ice_key = gamepad_button_check_pressed(0, gp_face4);
	right_key = gamepad_button_check_pressed(0, gp_padr);
	left_key = gamepad_button_check_pressed(0, gp_padl);
	down_key = gamepad_button_check_pressed(0, gp_padd);
	up_key = gamepad_button_check_pressed(0, gp_padu);
}