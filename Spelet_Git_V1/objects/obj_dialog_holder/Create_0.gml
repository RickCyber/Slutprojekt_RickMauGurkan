/// @description Insert description here initialize

dialog =[];
dialog_line =0;


// add some dailog

//bybor
d_villager_intro_text =
scr_add_dialog( "Greeting travelers, thank god you're here. We are in grave danger and we need your help.", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "If you're willing to help us please go and meet with the Priest whom", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "is standing outside the Church.", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "Just follow this path and go to the upmost right corner of town and you'll find it.", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "Ok, I'll do my best!", false, spr_Port_bar_Player, false);

d_villager_first_text =
scr_add_dialog( "Please save us from this grave danger!", false, spr_Port_bar_Villager_normal,);

d_villager_second_text =
scr_add_dialog( "Thanks for wanting to help, I'm very poor so I don’t have anything to give you, sorry.", true, spr_Port_bar_Villager_female);
scr_add_dialog( "No need for gifts, I'll do this because it the right thing to do!", false, spr_Port_bar_Player, false);

d_villager_third_text =
scr_add_dialog( "Brave traveler, I believe in you!", false, spr_Port_bar_Villager_normal);

d_villager_fourth_text =
scr_add_dialog( "Thanks for helping!", false, spr_Port_bar_Villager_normal);

d_villager_fifth_text =
scr_add_dialog( "Hey handsome, thanks for helping us.", true, spr_Port_bar_Villager_female);
scr_add_dialog( "When you're done you can pay me a visit, at night would be best <3.", false, spr_Port_bar_Villager_female);

d_villager_sixth_text =
scr_add_dialog( "It's too dangerous out there, we can't let you go there.", false, spr_Port_bar_Villager_normal);

//När man möter presten
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

d_priest_sixth_text =
scr_add_dialog( "You press the SHIFT-KEY on Keyboard or the LEFT-SHOULDER BUTTON on Controller to use the boots", true, spr_Port_bar_Priest );
scr_add_dialog( "Good luck out there!", false, spr_Port_bar_Priest );

//Folk i banan
d_wild_first_text =
scr_add_dialog( "Thank god, someone came. That pit came too when the monsters came and I've been stuck here.", true, spr_Port_bar_Villager_female);
scr_add_dialog( "I havn't been able too meet with my lover ever since then.", true, spr_Port_bar_Villager_female);
scr_add_dialog( "Your lover?", true, spr_Port_bar_Player, false);
scr_add_dialog( "Yes, he lives in the other end of the forest but I can't visit because of the monster.", true, spr_Port_bar_Villager_female);
scr_add_dialog( "Is there anything I can do for you?", true, spr_Port_bar_Player, false);
scr_add_dialog( "Please tell him that I'm OK.", true, spr_Port_bar_Villager_female);
scr_add_dialog( "To get to him you need to use this hookshot, he lives in a weird spot.", true, spr_Port_bar_Villager_female);
scr_add_dialog( "How do I use them?", true, spr_Port_bar_Player, false);
scr_add_dialog( "You press the K-KEY on Keyboard or the B-BUTTON on Controller.", true, spr_Port_bar_Villager_female );
scr_add_dialog( "You use it to hook on these wooden pillars or to attack monsters.", true, spr_Port_bar_Villager_female );
scr_add_dialog( "Thank you. Leave this matter to me, I'll deliver this message!", false, spr_Port_bar_Player, false);

d_wild_second_text =
scr_add_dialog( "Good luck, and thank you!", false, spr_Port_bar_Villager_female)

d_wild_third_text =
scr_add_dialog( "Does your lover live on the other side of the woods?", true, spr_Port_bar_Player, false);
scr_add_dialog( "Yes, how do you know that?", true, spr_Port_bar_Villager_normal);
scr_add_dialog( "She asked me to tell you that she is OK and that she", true, spr_Port_bar_Player, false);
scr_add_dialog( "wants to meet you as fast as the monsters go away.", true, spr_Port_bar_Player, false);
scr_add_dialog( "Oh, she still thinks of me. That's why I love her so much UwU.", true, spr_Port_bar_Villager_normal);
scr_add_dialog( "As thanks for you connecting me to my lover, you can get this information from me.", true, spr_Port_bar_Villager_normal);
scr_add_dialog( "I've heard that theres a mysterious man appearing to the west of the village.", true, spr_Port_bar_Villager_normal);
scr_add_dialog( "A mysterious man?", true, spr_Port_bar_Player, false);
scr_add_dialog( "Yes, but he only appears when he feels like it's safe, so", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "he probably won't appear before the demon lord is defeated.", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "Sounds interesting, I'll have to check that out.", false, spr_Port_bar_Player, false);

d_wild_fourth_text =
scr_add_dialog( "The mysterious man appears to the west of the village when it's save.", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "Thank you stranger!", false, spr_Port_bar_Villager_normal);

d_wild_fifth_text =
scr_add_dialog( "You can use that Ice Rod to freeze water and enemies.", true, spr_Port_bar_Villager_female );
scr_add_dialog( "Sounds neat", false, spr_Port_bar_Player, false);

d_wild_sixth_text =
scr_add_dialog( "Hi there traveler! I heard you use that sword there by pressing the", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "J-KEY on keyboard or the A-BUTTON on controller.", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "Well, ofcourse that's right.", false, spr_Port_bar_Player, false);

d_wild_seventh_text =
scr_add_dialog( "So the J-KEY on keyboard or A-BUTTON on controller. I also heard that if", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "you press the Q-KEY on keyboard or the RIGHT-SHOULDER BUTTON on controller", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "you will switch between your Sword and Bow to then use the Q-KEY or A-BUTTON", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "to then use your Bow instead of your sword.", true, spr_Port_bar_Villager_normal );
scr_add_dialog( "That's quite right.", false, spr_Port_bar_Player, false);

//När man går till presten efter man dödat bossen
d_priest_second_text =
scr_add_dialog( "I can't thank you enough, you don't know how much you've helped me... he.", true, spr_Port_bar_Priest );
scr_add_dialog( "Wait outside while I start the ritual.", true, spr_Port_bar_Priest );
scr_add_dialog( "Okej", false, spr_Port_bar_Player, false);

d_player_text =
scr_add_dialog( "Huh, what was that!?", false, spr_Port_bar_Player, false);

d_priest_third_text =
scr_add_dialog( "Now I can achieve greatness and rule the world, HA, HA, HAA!", true, spr_Port_bar_Priest );
scr_add_dialog( "This was all your doing, preist?", true, spr_Port_bar_Player, false);
scr_add_dialog( "Yes, it was I that summoned all these demons. And thanks to this holy artifact that", true, spr_Port_bar_Priest );
scr_add_dialog( "only appears before the true hero I can summon the greatest demon of all time!", true, spr_Port_bar_Priest );
scr_add_dialog( "Don't even think of stopping me, it's already too late now! HA, HA, HAAA!!", true, spr_Port_bar_Priest );
scr_add_dialog( "How could you do this?", true, spr_Port_bar_Player, false);
scr_add_dialog( "This village was never enough for me, I WAS MEANT FOR SOMETHING BIGGER!", true, spr_Port_bar_Priest );
scr_add_dialog( "The village trusts you to save them from the demons, why betray them?!", true, spr_Port_bar_Player, false);
scr_add_dialog( "This village you talk of betrayed me, they've always looked down on me.", true, spr_Port_bar_Priest );
scr_add_dialog( "That's why they built the church away from the village, they never wanted me near them.", true, spr_Port_bar_Priest );
scr_add_dialog( "You know that's not true, they love you and all off their hope lies in you.", true, spr_Port_bar_Player, false);
scr_add_dialog( "Please stop this, you can still go back to being the beloved priest of this village.", true, spr_Port_bar_Player, false);
scr_add_dialog( "It's too late, I can't turn back now.", true, spr_Port_bar_Priest );
scr_add_dialog( "I WILL CHANGE THE WORLD, I WAS MEANT FOR SOMETHING BIGGER, BEHOLD MY POWER", true, spr_Port_bar_Priest );
scr_add_dialog( "p̶͙̗̣̥̿͌͠˥̴̠̱͔̩̭̠̲͓̇́͛͌ɹ̵͙̥̥̬̳̜̤̯͔̯̉̓́̓͋O̷̢͇͉̘̺͉̊̏̿͊̕M̴͖̬̰̫̤̖͚̼̟̜͛̐̌͘ ̴̩̠̯̘͚̺̯̓͆̓̿͑̌S̵̘̤̎I̷̹̟͒͝͠͝͝H̷͕̤̗̬̾̉͋┴̴͖̉̽͗̆͂̾͠ ̷̨͔̙̒̽̃̑̒͝͝Ơ̸̡̙̺̗̱͙̲̤̜̞̎͐͒͝┴̵̳̗̺̲͈͕̟̥̓ ̶̢̡͇̳̠̙͚̲͆∩̷̤͂́͋̈́͌͐̈́͘͘͠ ̷̖͍̮̩͝N̷̦͍̠̞͊͋̉Ơ̶̗̬͓̐̇̀̀̉̑́W̷̡̧͖̙͇͙̥̟̐̇͑̾̈́W̶̦̱̝̎̍͜͝͝∩̵̨̨̛̖̮̎͐̀͑̈͛̕̕͝S̸̰͔͇͎̈́ ̷̤̻̫̬̈́̿͌̄͠ͅ˥̵̬͔̖͙̠̭̯̫̊̊̐̈́̇̉͘̕˥̶̜̟͙͐̈͋͜∀̴͖͙͓̳͐̃̀͝H̸̛̝̜̽̌͋̊̋͋̃̓͘Ş̸̯̮͓̘̭̝̈́̍͗̑̄͠ ̴̖̺̫͚͍̇͗̔̇Ì̸̢͎̅͆̆̂̚͝ ̶̞̠͚̺͎͐̂́͆͠͠Ņ̸̠̥̻̳̟̰͈̇∀̶̡̛̫͕̩͉̦͙͕̳̍̿̓̈͆̋͋͝ͅ┴̵͇͌̏̒͗͐͠∀̶̻̘̖̦̔͐͆ͅS̷̛̛̠̯͓̦̺̩͖̙̝͆̔͒̎̈ ̴̲̭̥̜͔̆͆̕Ⅎ̷̢͕̞̼̇̈́͜Ơ̸̠̼̖̈́̂́ ̴̭̮̬̤̹̣͈̐̾̑̿̓̀̃͝ͅŞ̴̬̺̖̲̦͇̤̖̔̆͋̈́͜ṕ̷̨̛͕̪̼͍͓̭͆͊̂̿̀͝ɹ̶̨̧̼̼̬͖̝̞͓͕̏Ō̵̩̂̆̒͐̅̓͝Ḿ̶͉̰̅̚͜͠ ̶̪̂͗̊̊̀̄̚͝Ǝ̵̧͎͙̥̑͋̒͑̓͂͒̿͜H̶̡̡͎͚̟̲͉̑͠┴̶̟̣͓̠̗͚͊͠ ̴̛̥̥͖͒̅̒͛͗͊̀̎⅄̶͎͎͒̏͒̿̂̒͝q̵͎̲͛͆̚", false, spr_Port_bar_Priest, );

d_priest_fourth_text =
scr_add_dialog( "You can't stop me. I've already opened the gate to hell. I will be the ruler of this world.", true, spr_Port_bar_Priest  );
scr_add_dialog( "It's a shame you had to turn against your village.", false, spr_Port_bar_Player, false);

d_player_second_text =
scr_add_dialog( "For I am now done with my quest, my quest to save this town... ", true, spr_Port_bar_Player, false);
scr_add_dialog( "from you.", false, spr_Port_bar_Player, false);

d_priest_fifth_text =
scr_add_dialog( "Seemes like you found the easter egg and defeated my scrapped minions.", true, spr_Port_bar_Priest  );
scr_add_dialog( "Yes and now you'll die OwO", false, spr_Port_bar_Player, false);

//När man möter bossen
d_boss_text =
scr_add_dialog( "Ń̵̲̤̭͇̱̝̳̟̈́͜Ò̴̧̨̹͚̻̤̜͝ͅ ̶̺͈͓̰̳̫̈́͒̽͊̓͊̒̏͝M̴͙̿̾O̶̢̥͖͕̠̮̰̯͑͋̓̀͛͆̓̆Ȓ̵͍͓̖̲̩̱͍̜̈́͋́͆̕ͅT̶̫͇̯̪̣͕̝̮͘ͅḀ̴̗̲̦̤̲̮͖̉̃̅͗̀͘̚L̸̬͔͌̾͂͛ ̸̻͒͐C̷̢̛̭̙̜̓̈́̔̐̌̀̊͘ͅA̴̢̫̖̠̦̻̘̟͎̔͗͝N̶̡͙̘͍̭̼͇̉̃ ̵̧̢̧̞̬͎̫̯̈́̈́͒̆̌̐ͅB̶̼̟̖͓̜̩̘̙͓̉͠Ë̷͈̝̞̜̩̖̥́S̸̥̖̰̪͙̄͆̀̓͆Ṯ̸̘͕̜͙̿̑͝ ̷̝̦̓M̴͍͈̟̪̓Ë̵͔̮͙̖̼́̔̃͐͗͗͂͆͘", true, spr_Port_bar_Boss );
scr_add_dialog( "I'll kill you and save the day!", false, spr_Port_bar_Player, false);

d_boss_second_text =
scr_add_dialog( "Y͈̰̺̜̹̤̳̽͌̐ͫ̐͢O̴̧̜͐ͯ̚U̵̖̗͎̩̾̌̽ͮͥͤ͋͢ ̴̪͍͎̽̀ͧ̕Wͩ̆ͦ̊̄ͪ͏̳͉̖͚͈̜͟͟Ȍ͈͓͉̗͈ͧ̚͢͝ͅN̨̬̜͂̈ͤ͊̏̂ͯ͜'̵͆ͦ̏͂͊̇̾͏̶̫̻̙̺T̛̞̼̥̺̃̂̈́̕ ̖̗̞̙̻͚̼ͩ͗̄͑̿̈́͒ͅK͎̹̹ͩͨ͒ͫ̄I̶̷̙̥̘̳̤̥̫͇̼̾ͭͨͧ̂ͪ̕L̴̡͈ͦ̑͐ͣͬ͛̒L̨̩͙̞̤̘͓ͩ̿̀ͥͪ̐̅ ̴͇͓̺̝͛͗̆̎̊̎͜M̳̞̹̹͎̦ͣͧ̃ͨͦ͑͡E̡̺̦͈̩͖̫̱̲ͣ̃ ͇͈̭̖̺̓ͬ͆ͥ͂ͤ͝T̂ͬ͐̿͏̣̱H̔̀ͮͨ͐̆̉͏̳̯͚̭̱̕Į̭̦̝̀ͨ̂͂̊̌͛͜ͅS̡͉̖̤̺̭͕͉̰͋ͧ̌ͪ̇ͬ ̉ͯͦͨ̉̌̀̅͢҉̻͕T͉͍͍̫̔ͮ̊͐ͧ͘͡I̳͈̫̖̜̝͈̐́͜M͍̯̮̦̦ͣ̉ͮ̒͗̄Ḛ̷̫̠̤͖͉͖͒̎̒̈́̒ͩͮ͐̔,̪̖͉͎͚̍ͫ̑̏̔̀͢͠ ̠̻̹̜̖̞̳͙͕ͬ͑̄͝I̗̥̭ͣͫ͆̿́͂̒̋͢͞ ̡͖͈͒ͧ͞A̢̛̫̬͇̻̞̱̿͌͐̀ͅM̯̿͌ͫ̈́̈ͪͭ͝͝ ̥̎͂̋̇̽̄͟͞M̷̮̘͎̳ͫ̓͐U̡͓̦̺̇̈́͂̽ͨ̕Ċ̳̹ͮ̿ͩ́H̶͓̞̟̲̹̭̱ͤͥ̋̌͛ ̧̥̘͗̾͆ͤ͞M̬̞͇͔̰̙̫̦̽͆͌̑̓͜Ợ̣̳̖̺̩̼̇̈́̈̾̿͋̑͌ͅͅR̜̲̣͊͌̐̋͘͜͢E̪̺͈ͥ̆̆ ͈̘͔̮̠̈͂̾͗͟P̋͋͒ͤ̊͏̳̠̦̺Oͦ̔̐̏̏̐ͮ̄̆҉͘͏̦͍W̸̨̖̱̑ͨ̄̋ͫ̏̈̿E̪̗̞͇̟̪̗̩̔͛̽̌ͦ͡R̶̞͇̽ͬ̾͐ͨ͛ ̴̶̘̠ͭ̽ͪ͒ͫ̃͝F̭̲̼̫̟̮̜̋̓̾͢͟Ṷ̹̪̩̻̲̀ͮͭ̃ͨ͌́͜ͅͅL̩̺̟̑ͨ̔̀͜L̢̢̬͔̪̑ͩͬͬ͞", true, spr_Port_bar_Boss );
scr_add_dialog( "I can't let this go on, I'll kill you and defeat that evil priest!", false, spr_Port_bar_Player, false);

d_second_text =
scr_add_dialog( "Du Tom, du har inte gjort så bra i skolan på sistone.", true, spr_avatar );
scr_add_dialog( "Bullshit... i min bralla som ska balla ur tralla lalla la hipp hipp hurra", false, spr_avatar, false);

//Easter egg
d_creator_text =
scr_add_dialog( "Hi there, I'm one of the creators of this game.", true, spr_Port_bar_Creator );
scr_add_dialog( "Creator? Game?", true, spr_Port_bar_Player, false);
scr_add_dialog( "Oh, eeh, I mean. I'm God or something like that.", true, spr_Port_bar_Creator );
scr_add_dialog( "Ok, makes sense.", true, spr_Port_bar_Player, false);
scr_add_dialog( "You believe me?", true, spr_Port_bar_Creator );
scr_add_dialog( "We live in a world with monsters and such, it's not too strange", true, spr_Port_bar_Player, false);
scr_add_dialog( "Makes sense. Anyway, I will now teleport you to some of the two unfinished bosses.", true, spr_Port_bar_Creator );
scr_add_dialog( "They aren't finished visually, but the mechanics still works.", true, spr_Port_bar_Creator );
scr_add_dialog( "It will be pretty hard, but try to have fun. This is an easter egg afterall.", false, spr_Port_bar_Creator );