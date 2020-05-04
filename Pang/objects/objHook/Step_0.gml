// check if we have to dissapear

//if we're out of room bounderies we deffinitely want to dissapear
if(y-sprite_height+vspeed<16)
{
	//time to be destroyed
		instance_destroy();
		return;
}

//check if we hit a ball
var ballCollided = collision_rectangle(x-6,y+2,x+3,iniY,objBallVeryBig,true,true);
if (ballCollided!=noone)
{
	//destroy the ball
	instance_destroy(ballCollided);
	
	//destroy ourselves
	instance_destroy();
	return;
}
