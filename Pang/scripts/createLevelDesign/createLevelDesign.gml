/// @description createLevelDesign(iterations,x_origin, y_origin, objType)
/// @param {integer} <iterations> 0 = objBallType, 1 = Iterations, 2 = Iterations
/// @param {real} <x_origin> Position X where iteration starts
/// @param {real} <y_origin> Position Y where iteration starts
/// @param {integer} <objType> 0 = Balls, 1 = Bricks, 2 = Ladders, 3 = Boss

switch (argument3){
	case 0:
		instance_create_layer(argument1,argument2,"Balls",argument0);
		break;
	case 1: 
		var i = 0;
		randomize();
		while (i < argument0){
			var brickToCreate = irandom(99);
			if (brickToCreate < 70) brickToCreate = objBrickDes2;
			else if (brickToCreate < 90) brickToCreate = objBrickDes;
			else if (brickToCreate < 100) brickToCreate = objBrickDes1;
			instance_create_layer((sprite_get_width(sprBrick)*i)+argument1,argument2,"LevelDesign",brickToCreate);
			i++;
		}
		break;
	case 2: 
		var i = 1;
		instance_create_layer(argument1,argument2,"LevelDesign",objLadder);
		while (i < argument0-1){
			instance_create_layer(argument1,-(sprite_get_height(sprite18)*i)+argument2,"LevelDesign",objLadderMiddle);
			i++;
		}
		instance_create_layer(argument1,-(sprite_get_height(sprite18)*i)+argument2,"LevelDesign",objLadderTop);
		break;
	case 3:
		var i = 0;
		randomize();
		while (i < argument0){
			var brickToCreate = irandom(99);
			if (brickToCreate < 70) brickToCreate = objBrickDes1;
			else if (brickToCreate < 90) brickToCreate = objBrickDes;
			else if (brickToCreate < 100) brickToCreate = objBrickDes2;
			instance_create_layer((sprite_get_width(sprBrick)*i)+argument1,argument2,"LevelDesign",brickToCreate);
			i++;
		}
		break;


}