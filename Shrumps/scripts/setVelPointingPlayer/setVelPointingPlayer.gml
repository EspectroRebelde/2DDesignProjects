/// @description Inserte aquí la descripción
// Throws the plane againt the player
var player = instance_find(objPlayerPlay, 0);
var dirX = 0;
var dirY = 1;

if (player != noone){
	var dirX = player.x - x;
	var dirY = player.y - y;
}

//Calculate the normalization, unitari vector, of the player
var sizeDir = sqrt(dirX * dirX + dirY * dirY);
var normDirX = dirX / sizeDir;
var normDirY = dirY / sizeDir;

//Set the velocity on the plane
hspeed = vel * normDirX;
vspeed = vel * normDirY;

// Orientates the plane in the direction of the velocity
var angle = radtodeg(arctan2(vspeed, hspeed)); // *180/pi
image_angle = 90 - angle;