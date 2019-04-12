/// @description Insert description here
// You can write your code in this editor


part_system=part_system_create();

part_emitter=part_emitter_create(part_system);

part_type=part_type_create();
part_type_sprite(part_type, spr_smoke, false, false, false);
part_type_alpha3(part_type, 0, 1, 0);
part_type_color3(part_type, c_white, c_yellow, c_red);

part_type_life(part_type, game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps)*1.5);
part_type_scale(part_type, 0.5, 0.5);
part_type_gravity(part_type, 0.025, 90);