event_inherited();

//If we are in a browser, need to adjust the size of the screen to allow to remove it completely
audio_stop_all();
if room == obj_res_manager.title_menu {
	game_end_alt();
} else {
	layer_sequence_create("BlackInOut", room_width/2, room_height/2, seq_black_out);
	obj_res_manager.black_in = true;
	alarm[1] = 119;
}