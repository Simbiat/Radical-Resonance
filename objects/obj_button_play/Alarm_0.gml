if blackout != noone {
	layer_sequence_destroy(blackout);
	blackout = noone;
}
room_goto(main_room);