hspeed = hspeed*momentumPreservation;
vspeed = 0;

sprite_index=sprPlayerClimb;
image_speed = 0;

//ClimbUp
if (keyClimb){
	image_speed = 2;
	y -= 4;
	if (!place_meeting(x,y,objLadder)){
		state = PLAYERSTATE.FREE;
		onLadder = false;
		var i = 0;
		while (!place_meeting(x,y+1,objLadder) && i <= 4){
			y +=1
			i++;
		}
	}
}
//ClimbDown
if (keyClimbDown){
	y += 4;
	image_speed = -2;
	if (!place_meeting(x,y-1,objLadder)){
		state = PLAYERSTATE.FREE;
		onLadder = false;
		var i = 0;
		while (!place_meeting(x,y-1,objLadder) && i <= 4){
			y -=1
			i++;
		}
	}
	else if (y>room_height-16){
		state = PLAYERSTATE.FREE;
		onLadder = false;
		var i = 0;
		while (!place_meeting(x,y-1,objLadder) && i <= 4){
			y -=1
			i++;
		}
	}
}


/* Historical Purpose

if (keyClimbDown){
	var floorID;
	var safe = false;
	floorID = instance_place(x,y+3,objBrick);
	if (floorID < 0)
		y +=5;
	else {
		with (floorID) {
			safe = position_meeting(x,y,objLadder);
		}
		if (safe)
			y +=5;
		else{
			state = PLAYERSTATE.FREE;
			onLadder = false;
			while (!place_meeting(x,y+1,objLadder)){
				y +=1
			}
		}
	}
}
*/