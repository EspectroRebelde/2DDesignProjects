// let´s check colision with solid objects
if (!place_free(x,y))
{
	var prevX= x-xVel;
	var prevY= y-yVel;
	
	// first check if we can fix this only moving in the X axis
	if (place_free(prevX, y))
	{
		//find the nearest position in the X axis
		FindFurthestFreePosAlongLine(prevX,y,x,y,0.5);
		
		//set the speed to 0 in the X axis
		
		xVel=-xVel;
	}
	else if (place_free(x,prevY))
	{
		//find the nearist valid position in the Y axis	
		FindFurthestFreePosAlongLine(x,prevY,x,y,0.5);
		
		//set the speed to 0 in the Y axis
		
		if (yVel >= 0 )
		{
			//calculate the speed to reach target heoght
			var sqrVal= (y-targetHeight)/(0.5*grav);
			if (sqrVal>=0)
				yVel=-grav*sqrt(sqrVal);
				
			// make sure it´s at least minbouncevel
			yVel= min(yVel,minBounceVel);
		}
		else
		{
			// just bounce
			yVel=-yVel;
		}
	}
	else
	{
		 // go back to the initial position and work from there	
		 FindFurthestFreePosAlongLine(prevX,prevY,x,y,0.5);
		 
		//mirror the xVel and check wether we have to mirror the yvel or calculate the one to reach the target heiht
		xVel=-xVel;
		if (yVel >= 0 )
		{
			//calculate the speed to reach target heoght
			var sqrVal= (y-targetHeight)/(0.5*grav);
			if (sqrVal>=0)
				yVel=-grav*sqrt(sqrVal);
				
			// make sure it´s at least minbouncevel
			yVel= min(yVel,minBounceVel);
		}
		else
		{
			// just bounce
			yVel=-yVel;
		}
		
	}
	
}
