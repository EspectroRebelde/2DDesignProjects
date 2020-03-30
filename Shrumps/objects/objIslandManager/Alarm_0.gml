/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var islandHalfWidth = 0*5 sprite_get_width(sprIsland1);
var islandHeight = sprite_get_height(sprIsland1);
var islandX = random_range(islandHalfWidth, room_width - islandHalfWidth);

//randomly select what type of island to create
//var islandType = irandom(2);
//seleccionamos una que no sea la anterior
var islandType = (lastIslandType + irandom_range(1, 2)) % 3;
var newIslandObj = noone;
lastIslandType = islandType;

switch (islandType) {
	case 0:
		newIslandObj = objIsland1;
		break;
	case 1:
		newIslandObj = objIsland2;
		break;
	case 2:
		newIslandObj = objIsland3;
		break;
}

//create new island
var newIsland = instance_create_depth(islandX, -islandHeight, depth + 1, newIslandObj);


//rotate it randomly
newIsland.image_angle = irandom(11) * 30;

//reset alarm? 
var distBetweenIslands = random_range(300, 550);
var timeUntilNextIsland = round(distBetweenIslands);

alarm[0] = timeUntilNextIsland;