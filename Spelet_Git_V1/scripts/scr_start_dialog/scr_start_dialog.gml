///scr_start_dialog
/// @description start dialog
/// @param object 
/// @param dialog_line

//create the_objekt_controller
if  (!instance_exists( obj_dialog_controller ) ) {
	instance_create_depth( 0, 0, 0, obj_dialog_controller );
	obj_dialog_controller.dialog_lines = argument[0].dialog;
	obj_dialog_controller.dialog_line = argument[1];
	obj_dialog_controller.fetch = true;
}
