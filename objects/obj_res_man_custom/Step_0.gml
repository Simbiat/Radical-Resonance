//We are not inheriting default buttonSelection() function
//since we are not using classic menu buttons
if gamepad != noone && gamepad_is_connected(gamepad) {
	//Menu on gamepad Start button
	if gamepad_button_check_pressed(gamepad, gp_start) {
		if room = title_menu {
			with obj_button_play {
				event_user(0);
			}
		} else {
			with obj_button_play_again {
				event_user(0);
			}
		}
	}
	if gamepad_button_check_pressed(gamepad, gp_select) {
		with obj_button_quit {
			event_user(0);
		}
	}
	//Character selection with gamepad
	if room == title_menu && (gamepad_button_check_released(gamepad, gp_padl) || gamepad_button_check_released(gamepad, gp_padr)) {
		with obj_button_char_select {
			event_user(0);
		}
	}
	//Sound control
	if room == title_menu {
		if gamepad_button_check_released(gamepad, gp_padu) {
			with volume_up {
				event_user(0);
			}
		} else if gamepad_button_check_released(gamepad, gp_padd) {
			with volume_down {
				event_user(0);
			}
		}
	}
}

//Link speed to combo
if instance_exists(obj_game) {
	stride = clamp(obj_game.combo/2, 15, 50);
} else {
	stride = 15;	
}

//Parallax effect
if instance_exists(obj_player) && obj_player.is_grounded == false {
	layer_x("city_front", -lerp(0, bg_offset, bg_front_speed));
	layer_x("city_back", -lerp(0, bg_offset, 0.5));
	layer_x("sky", -lerp(0, bg_offset, 0.65));
	bg_offset += stride;
}

//Desaturation level
fx_set_parameter(layer_get_fx("Desaturation"), "g_Intensity", desaturation);