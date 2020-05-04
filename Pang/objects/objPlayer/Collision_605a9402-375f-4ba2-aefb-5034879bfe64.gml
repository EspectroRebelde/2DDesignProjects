if (!invincibility){
	
	//Remove one life
	if (playerLifes > 0){
		playerLifes--;
		invincibility = true;
		alarm[1] = 2*room_speed;
		instance_create_depth(x-10,y-72,5,object13);
	}
	else { //playerLifes < 0;

		// show the game over message
		if (!notify)
			show_message("SORRY, NO LIFES LEFT")
		notify = true;
		alarm[0] = room_speed;
	}


}
