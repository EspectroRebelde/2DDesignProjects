/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//if (!isKamikaze){
	var prevAngle = direction;

	// Orientates towards the player
	setVelPointingPlayer();

	//check if we moved too much
	var angleDiff = direction - prevAngle;
	if (angleDiff > 100)
		angleDiff -= 360;
	if (angleDiff < -180)
		angleDiff += 360;
	if (angleDiff < -maxAngleOffset || angleDiff > maxAngleOffset)
	{
		//clamp the angular momentum
		angleDiff = clamp(angleDiff, -maxAngleOffset, maxAngleOffset);
	
		//set in new direction
		var newAngle = prevAngle + angleDiff
		direction = newAngle;
	
		//update the image direction to swith with the angle
		//[NOTE] Direction is the negative of the angle calculated
		image_angle = 90 + newAngle;
	}


//}

// Inherit the parent event
event_inherited();

