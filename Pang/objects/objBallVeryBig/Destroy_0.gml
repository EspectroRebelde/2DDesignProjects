// when destroying we want create 2 smaller balls (if possible)
if (ballToDivideIn!=noone)
{
	//create 2 balls
	var quarterSpriteWidth=0.25*sprite_width;
	var leftPos= x-quarterSpriteWidth;
	var rightPos= x+quarterSpriteWidth;
	var leftBall= instance_create_layer(leftPos,y,"Balls",ballToDivideIn);
	instance_create_layer(leftPos-40,y+10,"ControlLayer",object9);
	var rightBall= instance_create_layer(rightPos,y,"Balls",ballToDivideIn);
	instance_create_layer(rightPos+40,y+10,"ControlLayer",object9);
	leftBall.xVel=-leftBall.xVel;		//we want the left ball to move to the left
}
else{
	instance_create_layer(x,y+10,"ControlLayer",object9);
}

