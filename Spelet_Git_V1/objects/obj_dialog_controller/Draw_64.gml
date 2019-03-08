/// @description Draw the dialog box

if( !fetch ) {
draw_set_font( fnt_alagard );

	var x_offset = 0;
	if( dialog_avatar != "") {
		if ( dialog_left_facing ) {
		x_offset = -27;
		} else 
			x_offset = 27;
	}
	
	var x_pos = camera_get_view_width( view_camera[0] ) / 2 - 150 - x_offset;
	var y_pos = camera_get_view_height(view_camera[0] ) -100;
	
	// draw our dialog box
	draw_set_halign(fa_left); //make sure our font is left aligned
	draw_sprite( spr_Speech_bar_HUD, 0, x_pos, y_pos);
	draw_text_ext( x_pos + 14, y_pos + 8, string_hash_to_newline( dialog_output) , 16, 268);
	
	// draw our avatar box (if appropriate)
	if (dialog_avatar	!= "")	
		if (dialog_left_facing ) {
			draw_sprite( spr_Port_bar_HUD, 1, x_pos - 54, y_pos );
			draw_sprite( dialog_avatar, 0, x_pos -48, y_pos + 4);
		} else {
			draw_sprite( spr_Port_bar_HUD, 0, x_pos + 242, y_pos );
			draw_sprite_ext( dialog_avatar, 0, x_pos + 334, y_pos + 4, -1, 1, 0, c_white, 1);
		}
}
