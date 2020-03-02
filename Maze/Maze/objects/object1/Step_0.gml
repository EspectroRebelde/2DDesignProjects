/// @description Movement & Collision Managment
//CTRL + T to search for a Resource 
//CTRL + SHIFT + F to search and/or replace 
//CTRL + K to comment highlights

//----------------- INPUT DEFINITION
input_left			= keyboard_check(vk_left);
input_right			= keyboard_check(vk_right);
input_up			= keyboard_check(vk_up);
input_down			= keyboard_check(vk_down);
input_run			= keyboard_check(vk_shift);

//----------------- SPEED CHECK
if (input_run)
	spd = runSpeed;
else 
	spd = walkSpeed;
	
//----------------- RESET MOVE VARIABLE
moveX = 0;
moveY = 0;

//----------------- INTENDED MOVEMENT
moveY = (input_down - input_up) * spd;
if (moveY == 0) {
	moveX = (input_right - input_left) * spd;
}

//----------------- COLLISION
//------- X CHECK
if (moveX != 0){
	if (place_meeting(x+moveX, y,CollisionParent)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, CollisionParent)){
				x += sign(moveX); }
			else
				break;
		}
		moveX = 0;
	}
}
	
//-------- Y CHECK
if (moveY != 0){
	if (place_meeting(x, y+moveY ,CollisionParent)){
		repeat(abs(moveX)){
			if(!place_meeting(x, y + sign(moveY), CollisionParent)){
				y += sign(moveY); }
			else
				break;
		}
		moveY = 0;
	}
}

//----------------- SPRITE APPLICATION

if (input_right) { //Move to the right
	
	if (input_run) {
	    sprite_index = sprPlayerRunRight;
		image_speed = walkSpeed / 5; }
	else
		sprite_index = sprPlayerWalkRight; 
		image_speed = runSpeed / 13;
}

if(input_left) { //Move to the left
	if (input_run) {
	    sprite_index = sprPlayerRunLeft;
		image_speed = walkSpeed / 5; }
	else
		sprite_index = sprPlayerWalkLeft; 
		image_speed = runSpeed / 13;
}

if(input_up) { //Move Up
	if (input_run) {
	    sprite_index = sprPlayerRunBack;
		image_speed = walkSpeed / 5; }
	else
		sprite_index = sprPlayerWalkBack; 
		image_speed = runSpeed / 13;
}

if(input_down) { //Move Down
	if (input_run) {
	    sprite_index = sprPlayerRun;
		image_speed = walkSpeed / 5; }
	else
		sprite_index = sprPlayerWalk; 
		image_speed = runSpeed / 13;
}

if(keyboard_check(vk_nokey)) { //Stop animating
	if		(direction >315 && direction < 45)	sprite_index = sprPlayerWalkRight;
	else if (direction >45 && direction < 135)	sprite_index = sprPlayerWalkBack;
	else if (direction >135 && direction < 225)	sprite_index = sprPlayerWalkLeft;
	else if (direction >225 && direction < 315)	sprite_index = sprPlayerWalk;
	image_index = 0;
}
	

//----------------- MOVEMENT APPLICATION
x += moveX;
y += moveY;
	
	
	
	
	
	
//FIRST ITERATION OF CODE, HISTORICAL PURPOSES

//var playerDirection = 0;
//var run = false;
//var moveX = 0;
//var moveY = 0;

//if(keyboard_check(ord("D"))) { //Move to the right
//	moveX += walkSpeed; //Physically moves the object the amount of walkSpeed to the right
//	playerDirection = 2; 
//	image_speed = walkSpeed / 3; //Moves through the frames of the playing sprite
//	if (run) {
//	    sprite_index = sprPlayerRunRight;
//	}
//	else
//	sprite_index = sprPlayerWalkRight; //Assigns the walking right sprite when D is pressed
//}
//if(keyboard_check(ord("A"))) { //Move to the left
//	moveX -= walkSpeed;
//	playerDirection = -2; 
//	image_speed = walkSpeed / 3;
//	if (run) {
//	    sprite_index = sprPlayerRunLeft;
//	}
//	else
//	sprite_index = sprPlayerWalkLeft; //Assigns the walking right sprite when A is pressed
//}
//if(keyboard_check(ord("W"))) { //Move Up
//	moveY -= walkSpeed;
//	playerDirection = -1; 
//	image_speed = walkSpeed / 3;
//	if (run) {
//	    sprite_index = sprPlayerRunBack;
//	}
//	else
//	sprite_index = sprPlayerWalkBack; //Assigns the walking right sprite when W is pressed
//}
//if(keyboard_check(ord("S"))) { //Move Down
//	moveY += walkSpeed;
//	playerDirection = 1; 
//	image_speed = walkSpeed / 3;
//	if (run) {
//	    sprite_index = sprPlayerRun;
//	}
//	else
//	sprite_index = sprPlayerWalk; //Assigns the walking right sprite when S is pressed
//}
//if(keyboard_check(vk_shift)){  //Run faster
//	run = true;
//	walkSpeed = 45;
//}
//else {
//	run = false;
//	walkSpeed = 30;
//}
//	//run = !run; //Toggles run
//	//if (run ==true){ //Wwalk speed * 1.5
//	//	walkSpeed = 30;
//	//}
//	//else {
//	//	walkSpeed = 45;
//	//}

//if(keyboard_check(vk_nokey)) { //Stop animating
//	image_speed = 0; //Set speed of playing frames to 0
//	if (direction >315 && direction < 45)		sprite_index = sprPlayerWalk;
//	else if (direction >45 && direction < 135)	sprite_index = sprPlayerWalkBack;
//	else if (direction >135 && direction < 225)	sprite_index = sprPlayerWalkRight;
//	else if (direction >225 && direction < 315)	sprite_index = sprPlayerWalkLeft;
//	/*switch (playerDirection) {
//		case 1:
//			sprite_index = sprPlayerWalk;
//			break;
//		case -1:
//			sprite_index = sprPlayerWalkBack;
//			break;
//		case 2:
//			sprite_index = sprPlayerWalkRight;
//			break;
//		case -2:
//			sprite_index = sprPlayerWalkLeft;
//			break;
//	}*/
//	image_index = 0;
//}

//x += moveX;
//y += moveY;
