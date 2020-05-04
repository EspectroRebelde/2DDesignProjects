if(!onLadder){
// check if the object has gone out of the room bondaries
var halfSpriteWidth=abs(0.5*sprite_width);
if (x<16+halfSpriteWidth)
{
	x=16+halfSpriteWidth;
	hspeed=max(hspeed,0);           //only allow moving right
}
else if (x>room_width-(16+halfSpriteWidth))
{
	x=room_width-(16+halfSpriteWidth);
	hspeed=min(hspeed,0);          //only allow moving left
}

//check if the player has hit the floor
if (y>room_height-16)
{
	//we're on the floor
	y=room_height-16;
	vspeed=0;
}

// let´s check colision with solid objects
if (!place_free(x,y))
{
	var prevX= x-hspeed;
	var prevY= y-vspeed;
	
	// first check if we can fix this only moving in the X axis
	if (place_free(prevX, y))
	{
		//find the nearest position in the X axis
		FindFurthestFreePosAlongLine(prevX,y,x,y,0.5);
		
		//set the speed to 0 in the X axis
		x=prevX;
		hspeed=0;
	}
	else if (place_free(x,prevY))
	{
		//find the nearist valid position in the Y axis	
		FindFurthestFreePosAlongLine(x,prevY,x,y,0.5);
		
		//set the speed to 0 in the Y axis
		y=prevY;
		vspeed=0;
	}
	else
	{
		 // go back to the initial position and work from there	
		 FindFurthestFreePosAlongLine(prevX,prevY,x,y,0.5);
		 
		 //set the speed to 0 in both axis
		x=prevX;
		y=prevY;
		hspeed=0;
		vspeed=0;
	}
	
}
}