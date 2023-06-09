if !selected {
	//For some reason at the start of the game, if the mouse is off the screen, its coordiantes are 0/0.
	//Coordinates of the buttons are also 0/0.
	//This triggers fake "Mouse Enter", which we need to "fix"
	if x != 0 && y != 0 {
		//Deselect all other buttons
		for (var i = 0; i < instance_number(obj_menu_button); ++i;) {
			button = instance_find(obj_menu_button, i);
			if button.selected {
				button.selected = false;
			}
		}
		// Hovering over mouse changes frame
		selected = true;
	}
}