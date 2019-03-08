/// @description Insert description here initialize

dialog =[];
dialog_line =0;


// add some dailog
d_villager_intro_text =
scr_add_dialog( "Greeting travelers, thank god you're here. We are in grave danger and we need your help.", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "If you're willing to help us please go and meet with the Priest whom is standing outside the Church.", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "Just follow this path and go to the upmost right corner of town and you'll find it.", true, spr_Port_bar_Player );
scr_add_dialog( "Ok, I'll do my best!", false, spr_Port_bar_Player, false);

d_priest_first_text =
scr_add_dialog( "I was told to come meet with you...", true, spr_Port_bar_Player, false);
scr_add_dialog( "Are you here to help us?", true, spr_Port_bar_Priest );
scr_add_dialog( "I'll do what I can.", true, spr_Port_bar_Player, false);
scr_add_dialog( "Our lord has heard our prayers, we've been blessed.", true, spr_Port_bar_Priest );
scr_add_dialog( "Tell me Priest, what seems to be the problem?", true, spr_Port_bar_Player, false);
scr_add_dialog( "Our village is surrounded by monsters from the underworld", true, spr_Port_bar_Priest );
scr_add_dialog( "and we need your help to get rid of this dark magic torturing my village.", true, spr_Port_bar_Priest );
scr_add_dialog( "What do I need to do?", true, spr_Port_bar_Player, false);
scr_add_dialog( "I need you to bring me the holy artifact that the demon lord stole from my church.", true, spr_Port_bar_Priest );
scr_add_dialog( "The holy artifact are used to unlock the gate to heaven so ", true, spr_Port_bar_Priest );
scr_add_dialog( "we can contact the guardian angels to help us in this terrible time.", true, spr_Port_bar_Priest );
scr_add_dialog( "The demon lords lair is hidden somewhere in the Haunted-woods to the north.", true, spr_Port_bar_Priest );
scr_add_dialog( "I'll be on my way then...", true, spr_Port_bar_Player, false);
scr_add_dialog( "Wait, take these magical boots with you. With them you can dash over cliffs and away from enemys.", true, spr_Port_bar_Priest );
scr_add_dialog( "Why thank you, how do I use them?", true, spr_Port_bar_Player, false);
scr_add_dialog( "You press the SHIFT-KEY on Keyboard or the LEFT-SHOULDER BUTTON on Controller.", true, spr_Port_bar_Priest );
scr_add_dialog( "Thank you, and leave this matter to me!", false, spr_Port_bar_Player, false);

d_priest_second_text =
scr_add_dialog( "I can't thank you enough, you don't know how much you've helped me... he.", true, spr_Port_bar_Priest );
scr_add_dialog( "Wait outside while I start the ritual.", true, spr_Port_bar_Priest );
scr_add_dialog( "No problem, hope it goes well.", false, spr_Port_bar_Player, false);

d_player_text =
scr_add_dialog( "Huh, what was that!?", false, spr_Port_bar_Player, false);

d_boss_text =
scr_add_dialog( "Ń̵̲̤̭͇̱̝̳̟̈́͜Ò̴̧̨̹͚̻̤̜͝ͅ ̶̺͈͓̰̳̫̈́͒̽͊̓͊̒̏͝M̴͙̿̾O̶̢̥͖͕̠̮̰̯͑͋̓̀͛͆̓̆Ȓ̵͍͓̖̲̩̱͍̜̈́͋́͆̕ͅT̶̫͇̯̪̣͕̝̮͘ͅḀ̴̗̲̦̤̲̮͖̉̃̅͗̀͘̚L̸̬͔͌̾͂͛ ̸̻͒͐C̷̢̛̭̙̜̓̈́̔̐̌̀̊͘ͅA̴̢̫̖̠̦̻̘̟͎̔͗͝N̶̡͙̘͍̭̼͇̉̃ ̵̧̢̧̞̬͎̫̯̈́̈́͒̆̌̐ͅB̶̼̟̖͓̜̩̘̙͓̉͠Ë̷͈̝̞̜̩̖̥́S̸̥̖̰̪͙̄͆̀̓͆Ṯ̸̘͕̜͙̿̑͝ ̷̝̦̓M̴͍͈̟̪̓Ë̵͔̮͙̖̼́̔̃͐͗͗͂͆͘", true, spr_Port_bar_Player );
scr_add_dialog( "I'll kill you and save the day!", false, spr_Port_bar_Player, false);

d_second_text =
scr_add_dialog( "Du Tom, du har inte gjort så bra i skolan på sistone.", true, spr_avatar );
scr_add_dialog( "Bullshit... i min bralla som ska balla ur tralla lalla la hipp hipp hurra", false, spr_avatar, false);