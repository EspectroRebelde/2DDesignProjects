//Get inputs for the up and down arrows
if (keyboard_check_released(vk_up)){
	//Changes the selected option
	--selectedPointer;
	if (selectedPointer < 0)
		selectedPointer = 5;
}
else if (keyboard_check_released(vk_down)){
	//Changes the selected option
	selectedPointer = (selectedPointer + 1) % 6;
}
else if (keyboard_check_released(vk_return)){
	//Execute the choosen menu option
	switch (selectedPointer) {
	
		case 0:
			room_goto(roomMain);
			break;
		case 1: /*Continue*/ 
			if (global.scorePlayer >= 1000000 && room != roomMain2)
				room_goto(roomMain2);
			else if (global.scorePlayer >= 100000 && room != roomMain1)
				room_goto(roomMain1);
			else
				room_goto(roomMain);
				//if (file_exists(SAVEFILE)){
				//	var file = file_text_open_read(SAVEFILE);
				//	var pastRoom = file_text_read_real(file);
				//	file_text_close(file);
				//}
				//room_goto(pastRoom);
				break;
		case 2:
			show_message_async("No es un juego facil, solo exigente,\nse guardara tu puntuacion la cual determina tu nivel.\n\nSi quieres la experiencia original\njuega siempre desde el inicio\nlos enemigos escalan por fases.\n\nSi quieres probar otras fases\n\"C/User/AppData/Local/Shmup/Save.dat\"\ny cambia el primer valor por 100000 o 1000000\n(Cien mil o Millon)");
			break;
		case 3:
			showScore = !showScore;
			objHUD.showScore = !objHUD.showScore;
			break;
		case 4:
			game_end();
			break;
		case 5:
			room_goto(showCase);
			break;
		default:
			show_message("This option is not (yet) implemented");
			break;
	}

}
