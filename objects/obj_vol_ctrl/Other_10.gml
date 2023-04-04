if id == volume_down {
	obj_res_manager.gain -= 0.05;
} else {
	obj_res_manager.gain += 0.05;
}
if obj_res_manager.gain > 1 {
	obj_res_manager.gain = 1;
} else if obj_res_manager.gain < 0 {
	obj_res_manager.gain = 0;
} else {
	if obj_vol_ctrl.musicID != noone {
		audio_stop_sound(obj_vol_ctrl.musicID);
	}
	obj_vol_ctrl.musicID = audio_play_sound(obj_res_manager.music_file, 10, 0, obj_res_manager.gain, obj_res_manager.music_offset);
	alarm[0] = 4.5*room_speed;
}