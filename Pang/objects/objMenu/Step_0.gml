//Get inputs for the up and down arrows
if (keyboard_check_released(vk_up)){
	//Changes the selected option
	--selectedPointer;
	if (selectedPointer < 0)
		selectedPointer = 1;
}
else if (keyboard_check_released(vk_down)){
	//Changes the selected option
	selectedPointer = (selectedPointer + 1) % 2;
}
else if (keyboard_check_released(vk_return)){
	//Execute the choosen menu option
	switch (selectedPointer) {
	
		case 0:
			room_goto(room0);
			break;
		case 1:
			game_end();
			break;
	}

}
