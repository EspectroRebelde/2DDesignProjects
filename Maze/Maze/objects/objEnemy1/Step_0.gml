
//----------------- MOVEMENT APPLICATION
randomize();
x += moveX * irandom_range(7,16);
y += moveY * irandom_range(7,16);
	




//Historical Purpose, direction trials

////----------------- INTENDED MOVEMENT
//moveY = ((direction >225 && direction < 315) - (direction >45 && direction < 135)) * spd;
//if (moveY == 0) {
//	moveX = ((direction >315 || direction < 45) - (direction >135 && direction < 225)) * spd;
//}

////----------------- COLLISION
////------- X CHECK
//if (moveX != 0){
//	if (place_meeting(x+moveX, y,CollisionParent)){
//		colision = true;
//		x += sign(moveX);

//	moveX = 0;
//	}
//}
	
////-------- Y CHECK
//if (moveY != 0){
//	if (place_meeting(x, y+moveY ,CollisionParent)){
//		//repeat(abs(moveX)){
//		//	if(!place_meeting(x, y + sign(moveY), CollisionParent)){
//		colision = true;
//				y += sign(moveY); }
//		//	else
//		//		break;
//		//}
//		moveY = 0;
	
//}

//----------------- SPRITE APPLICATION
//if (colision){
//	if (direction >315 || direction < 45) { //Move to the right
//			sprite_index = sprEnemyRight;
//			moveX = -3;
//			//image_speed = runSpeed / 7;
//	}

//	if(direction >135 && direction < 225) { //Move to the left
//			sprite_index = sprEnemyLeft; 
//			moveX = 3;
//			//image_speed = runSpeed / 7;
//	}

//	if(direction >45 && direction < 135) { //Move Up
//			sprite_index = sprEnemyBack; 
//			moveY = -3;
//			//image_speed = runSpeed / 7;
//	}

//	if(direction >225 && direction < 315) { //Move Down
//			sprite_index = sprEnemy; 
//			moveY = 3;
//			//image_speed = runSpeed / 7;
//	}
//}
//else{
//	if (direction >315 || direction < 45) { //Move to the right
//			sprite_index = sprEnemy;
//			moveY = -3;
//			//image_speed = runSpeed / 7;
//	}

//	if(direction >135 && direction < 225) { //Move to the left
//			sprite_index = sprEnemyBack;
//			moveY = 3;
//			//image_speed = runSpeed / 7;
//	}

//	if(direction >45 && direction < 135) { //Move Up
//			sprite_index = sprEnemyRight;
//			moveX = 3;
//			//image_speed = runSpeed / 7;
//	}

//	if(direction >225 && direction < 315) { //Move Down
//			sprite_index = sprEnemyLeft; 
//			moveX = -3;
//			//image_speed = runSpeed / 7;
//	}

//}