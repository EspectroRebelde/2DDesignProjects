//the passed arguments give us the line
var iniX= argument0;
var iniY= argument1;
var endX= argument2;
var endY= argument3;
var maxError= argument4;

if (maxError <= 0)
{
	show_debug_message("invalid max error");
	return;
}
//we´re goin to change x and y to find the furthest along the given line we are still free
//we´re assuming that iniX and iniY is a free possition

//let´s use a binary search algorithm

var dirX= endX -iniX;
var dirY= endY-iniY;
var errorDist = sqrt(dirX*dirX+dirY*dirY);
while(errorDist>maxError)
{
	// find the middle point
	var newX =0.5*(iniX+endX);
	var newY=0.5*(iniY+endY);
	//check if it´s free
	if(place_free(newX,newY))
	{
		//if it´s free we swap our initial point for the new one
		iniX=newX;
		iniY=newY;
	}
	else
	{
		//if it´s not free we swap our final point
		endX=newX;
		endY=newY;
	}
	// recalculate the direction and the error
	/*dirX=endX-iniX;
	dirY=endY-iniY;
	errorDist = sqrt(dirX*dirX+dirY*dirY);*/
	errorDist*=0.5; 
}

//finally upfate our position
x=iniX;
y=iniY;