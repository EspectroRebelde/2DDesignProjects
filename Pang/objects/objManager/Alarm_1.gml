/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
///createLevelDesign(iterations,x_origin, y_origin, objType)

switch (phase) {
	case 0:
		//Balls
		createLevelDesign(objBallSmall, 144, 47, 0);
		createLevelDesign(objBallVeryBig, 208, 240, 0);
		//Main Bricks
		createLevelDesign(13, 32, 96, 1);
		createLevelDesign(8, 992, 224, 1);
		//Indiv. Bricks
		createLevelDesign(1, 480, 192, 1);
		createLevelDesign(1, 896, 544, 1);
		createLevelDesign(1, 416, 352, 1);
		createLevelDesign(1, 992, 416, 1);
		createLevelDesign(1, 832, 352, 1);
		//Ladders + Ladder Platform
		createLevelDesign(3, 608, 270, 1);
		createLevelDesign(11,640, 774, 2);
		
		changedPhase = false;
		break;
	case 1: ;
		show_message("To help you out on your journey, I'll add one ammo per stage you clear.");
		show_message("The stages are gonn get harder and harder but you'll have more tools too!");
		//Balls
		createLevelDesign(objBallMedium, irandom_range(room_width - 64,96), 320, 0);
		createLevelDesign(objBallMedium, irandom_range(64,832), 192, 0);
		createLevelDesign(objBallMedium, irandom_range(64,832), 64, 0);
		createLevelDesign(objBallVeryBig, 1408, 480, 0);
		//Main Bricks
		createLevelDesign(23, 32, 364, 1);
		createLevelDesign(23, 32, 216, 1);
		createLevelDesign(23, 32, 128, 1);
		//Ladders
		createLevelDesign(9, 96, 772, 2);
		//createLevelDesign(3,256, 336, 2);
		createLevelDesign(9, room_width - 96, 772, 2);

		changedPhase = false;
		break;
	
	case 2: 
		
		//Balls
		if (global.finishedGame == true){
			createLevelDesign(objBallMedium, 1456, irandom_range(64,336), 0);
			createLevelDesign(objBallVeryBig, 64, irandom_range(64,352), 0);
			createLevelDesign(objBallVeryBig, 976, irandom_range(64,192), 0);
			createLevelDesign(objBallVeryBig, 608, irandom_range(64,192), 0);
			createLevelDesign(objBallVeryBig, 1408, irandom_range(64,128), 0);
			createLevelDesign(objBallVeryBig, 144, irandom_range(64,112), 0);
		}
		else{
			createLevelDesign(objBallMedium, 1456, irandom_range(64,336), 0);
			//createLevelDesign(objBallMedium, 64, irandom_range(64,352), 0);
			//createLevelDesign(objBallSmall, 976, irandom_range(64,192), 0);
			//createLevelDesign(objBallSmall, 608, irandom_range(64,192), 0);
			//createLevelDesign(objBallVeryBig, 1408, irandom_range(64,128), 0);
			//createLevelDesign(objBallVeryBig, 144, irandom_range(64,112), 0);
		}
		//Main Bricks
		createLevelDesign(6, 32, 464, 3);
		createLevelDesign(6, 1120, 464, 3);
		createLevelDesign(3, 480, 304, 3);
		createLevelDesign(3, 672, 160, 3);
		createLevelDesign(3, 864, 304, 3);
		//Ladders
		createLevelDesign(7, 128, 776, 2);
		createLevelDesign(7, room_width - 128, 776, 2);

		changedPhase = false;
		break;
		
	case 3: 
		show_message("Congrats! You overcame all the challenges and finish the game!")
		show_message("Thanks for playing!")
		show_message("I gave you a little 'reward' for it so, click Play Game and enjoy!")
		global.finishedGame = true;
		alarm[0] = room_speed;
	
	
}