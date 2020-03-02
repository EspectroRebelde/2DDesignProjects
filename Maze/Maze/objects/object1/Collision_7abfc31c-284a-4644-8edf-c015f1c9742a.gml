/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//----------------- SPRITE APPLICATION

if (input_down) { //Move to the right
	    sprite_index = sprPlayerDeath;
}

else if(input_left) { //Move to the left
	    sprite_index = sprPlayerDeathLeft;
}

else if(input_up) { //Move Up
	    sprite_index = sprPlayerDeathBack;
}

else if(input_right) { //Move Down
	   sprite_index = sprPlayerDeathRight;
}
image_index = 0;

audio_play_sound(sou_scream, 1, false);

show_message("Try Again, can't let this little fail stress you, right?\n"); 

game_restart();

