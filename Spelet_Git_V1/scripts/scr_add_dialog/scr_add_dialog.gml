///scr_add_dialog
/// @describtion add lines of dialog to the dialog array
/// @param Dialog
/// @param Continue
/// @param Avatar
/// @param Left_Facing

// capture our input from the user and set up default values as necessary 
var dialog_part = [];
var dialog_text = "";				if( argument_count >= 1 ) dialog_text = argument[0]
var dialog_continue = false;		if( argument_count >= 2 ) dialog_continue = argument[1]
var dialog_avatar = "";				if( argument_count >= 3 ) dialog_avatar = argument[2]
var dialog_left_facing = true;		if( argument_count >= 4 ) dialog_left_facing = argument[3]

//savde value to array
dialog_part[0] = dialog_text; //our text to display
dialog_part[1] = dialog_continue; // do we continue to the next item or no?
dialog_part[2] = dialog_avatar; //image to display
dialog_part[3] = dialog_left_facing //should the avatar he displayed be on the left or right?

//save array to dialog
dialog[dialog_line] = dialog_part; 
dialog_line +=1

return dialog_line - 1;
