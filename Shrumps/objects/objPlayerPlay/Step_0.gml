//----------------- Gather the inputs
    movX = 0;
if (keyboard_check(vk_left))
    movX -= 1;
if (keyboard_check(vk_right))
    movX += 1;

    movY = 0;
if (keyboard_check(vk_up))
    movY -= 1;
if (keyboard_check(vk_down))
    movY += 1;

//----------------- Change of sprite of bullets for better clarity on the background
if (room = roomMain)
	weapon = objBullet;
else if (room = roomMain1)
	weapon = objBullet1;
else
	weapon = objBullet;


//----------------- Calculates the new velocities with acceleration
var targetSpeedX = movX * maxSpeed;
var offsetSpeedX = targetSpeedX - hspeed;
offsetSpeedX = clamp(offsetSpeedX, -accel, accel);
//hspeed += offsetSpeedX;
	
var targetSpeedY = movY * maxSpeed;
var offsetSpeedY = targetSpeedY - vspeed;
offsetSpeedY = clamp(offsetSpeedY, -accel, accel);
//vspeed += offsetSpeedY;

if (movX!=0 && movY!=0){
	hspeed+=offsetSpeedX*(sqrt(2)/2);
	vspeed+=offsetSpeedY*(sqrt(2)/2);
}
else{
hspeed += offsetSpeedX;
vspeed += offsetSpeedY;	
}

//----------------- Make sure we stay within the boundaries of the screen calculation the next position 
var nextX = x + hspeed;
var nextY = y + vspeed;

var left = sprite_xoffset - sprite_get_bbox_left(sprIdle) + 4;
var right = room_width - (sprite_get_bbox_right(sprIdle) - sprite_xoffset + 4);
if (nextX < left) {
    hspeed = max(hspeed, 0);
    x = left;
} else if (nextX > right) {
    hspeed = min(hspeed, 0);
    x = right;
}
var top = sprite_yoffset - sprite_get_bbox_top(sprIdle);
var bottom = room_height - (sprite_get_bbox_bottom(sprIdle) - sprite_yoffset);
if (nextY < top) {
    vspeed = max(vspeed, 0);
    y = top;
} else if (nextY > bottom) {
    vspeed = min(vspeed, 0);
    y = bottom;
}


//----------------- Creates a bullet when a key is pressed
++shootTimer;
if (shootTimer >= shootFrame && keyboard_check(vk_control)) {
	switch (fireMode){
		case 0:	//Single Mode
			shootFrame = 8;
			//----------------- Creates a bullet
			var newBullet = instance_create_depth(x, y, depth + 1, weapon);
			newBullet.vspeed = -bulletSpeed*0.8 + objPlayerPlay.vspeed * 0.4;
			//----------------- Updates Timer
			shootTimer = 0;
			break;
			
		case 1: //Shotgun
			//--------- Has DMG Drop calculated on weapon
			shootFrame = 20;
			var i = -2;
			while (i < 3) {
				var newBullet = instance_create_depth(x, y+3*(i*i), depth + 1, weapon);
				newBullet.vspeed = -bulletSpeed*0.5 + objPlayerPlay.vspeed * 0.4;
				newBullet.hspeed = i/2;
				var angle = radtodeg(arctan2(newBullet.vspeed, newBullet.hspeed)); // *180/pi
				newBullet.image_angle = 270 - angle;
				i++;
			}
			shootTimer = 0;
			//BASE objBullet.damage = 20;
			break;
			
		case 2:	//Spray
			//--------- More bullets, less rate of fire and DMG/Bullet
			shootFrame = 30;
			var i = -3;
			while (i < 4) {
				var newBullet = instance_create_depth(x, y-15, depth - 1, weapon);
				newBullet.vspeed = -bulletSpeed*0.5 + objPlayerPlay.vspeed * 0.4;
				newBullet.hspeed = i*0.85;
				var angle = radtodeg(arctan2(newBullet.vspeed, newBullet.hspeed)); // *180/pi
				newBullet.image_angle = 270 - angle;
				i++;
			}
			shootTimer = 0;
			break;
			
		case 3: //Circle
			//--------- Lots of bullets which DMG depend on their veocity
			shootFrame = 25;
			for(i=0;i<=360;i+=360/16) {
				newBullet = instance_create_depth(x,y-15,depth+5,weapon)
				newBullet.direction = i;
				newBullet.speed = maxSpeed; //bulletSpeed/sqrt(2)/2 - objPlayerPlay.vspeed * 0.1;
				var angle = radtodeg(arctan2(newBullet.vspeed, newBullet.hspeed));
				newBullet.image_angle = 270 - angle;
			
			//Manual Iteration, FIRST
			//var i = -10;
			////while (i < 11) {
			//var newBullet = instance_create_depth(x, y-15, depth - 1, objBullet);
			//	newBullet.vspeed = -bulletSpeed/2; //-bulletSpeed + objPlayerPlay.vspeed * 0.4;
			//	newBullet.hspeed = 0;
			//	var angle = radtodeg(arctan2(newBullet.vspeed, newBullet.hspeed)); // *180/pi
			//	newBullet.image_angle = 270 - angle;
			//var newBullet = instance_create_depth(x, y-15, depth - 1, objBullet);
			//	newBullet.vspeed = -bulletSpeed/(sqrt(2))/2; //-bulletSpeed + objPlayerPlay.vspeed * 0.4;
			//	newBullet.hspeed = bulletSpeed/(sqrt(2))/2;
			//	var angle = radtodeg(arctan2(newBullet.vspeed, newBullet.hspeed)); // *180/pi
			//	newBullet.image_angle = 270 - angle;
			//var newBullet = instance_create_depth(x, y-15, depth - 1, objBullet);
			//	newBullet.vspeed = 0; //-bulletSpeed + objPlayerPlay.vspeed * 0.4;
			//	newBullet.hspeed = bulletSpeed/2;
			//	var angle = radtodeg(arctan2(newBullet.vspeed, newBullet.hspeed)); // *180/pi
			//	newBullet.image_angle = 270 - angle;
			//var newBullet = instance_create_depth(x, y-15, depth - 1, objBullet);
			//	newBullet.vspeed = bulletSpeed/2; //-bulletSpeed + objPlayerPlay.vspeed * 0.4;
			//	newBullet.hspeed = 0;
			//	var angle = radtodeg(arctan2(newBullet.vspeed, newBullet.hspeed)); // *180/pi
			//	newBullet.image_angle = 270 - angle;
			//var newBullet = instance_create_depth(x, y-15, depth - 1, objBullet);
			//	newBullet.vspeed = 0; //-bulletSpeed + objPlayerPlay.vspeed * 0.4;
			//	newBullet.hspeed = -bulletSpeed/2;
			//	var angle = radtodeg(arctan2(newBullet.vspeed, newBullet.hspeed)); // *180/pi
			//	newBullet.image_angle = 270 - angle;
			//	//i++;

			}
			shootTimer = 0;
			break;
			
		case 4:	//Mines
			//--------- Stay on the screen for 30 seconds, stop enemy bullets
			shootFrame = 30;
			//objBullet.damage = 80
			//----------------- Creates a bullet
			if (room = roomMain)
				var newBullet = instance_create_depth(x, y, depth + 1, objMine);
			else if (room = roomMain1)
				var newBullet = instance_create_depth(x, y, depth + 1, objMine1);
			//----------------- Updates Timer
			shootTimer = 0;
			break;
	}
}

//-----------------//-----------------//-----------------//-----------------//-----------------//-----------------


//----------------- ScoreBased Power-Ups

//if (scorePlayer > 1000 && powerUpLevel != 1){
//	instance_create_depth(x-12, y, depth, objExtraCannon);
//	powerUpLevel = 1;
//}

