///scr_get_dialog
/// @description get dialog pieces from object
/// @param start_line

if( fetch ) {

	dialog_output = "";
	dialog_output_speed = 0;
	var dialog_data = dialog_lines[dialog_line];
	
	dialog_text = dialog_data[0]
	dialog_continue = dialog_data[1]
	dialog_avatar = dialog_data[2]
	dialog_left_facing = dialog_data[3]
	
	fetch = false; // prevent  this from running repeatedly	

} else {
	
	
	// finish filling in text / skip to next next if user pressed key
	if( argument[0] ) {
		if( string_length( dialog_text ) > string_length( dialog_output ) ) {
			dialog_output_speed = 1000;
		} else { 
			if( dialog_continue ) {
				dialog_line +=1;
				fetch = true;
			} else {
				instance_destroy();
			}
		}
	}

	dialog_output = string_copy( dialog_text, 1, dialog_output_speed );
	dialog_output_speed += 0.8;

}
