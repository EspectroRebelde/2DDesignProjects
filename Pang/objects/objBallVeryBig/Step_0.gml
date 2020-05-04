// do the horizontal movement

//calculate the new position
var newX = x+xVel;

//check against the room boundaries
var left =16+radius;
var right= room_width-(16+radius);
if(newX <= left)
{
	//make sure the speed is positive
	xVel=abs(xVel);
	//bounce the ball of the wall
	var bounceDistX = left - newX;
	newX = left+bounceDistX;
}
else if (newX>=right)
{
	// make sure the space is negative
	xVel=-abs(xVel);
	// bounce the ball off the wall
	var bounceDistX= newX-right;
	newX=right-bounceDistX;
}

//check collision against bricks and other objects


// update the x position of the ball
x=newX;

//vertical movement

//update the speed
yVel+=grav;
var newY= y + yVel;

//check against room bounderies
var top = 16+radius;
var bottom = room_height-(16+radius)
if (newY<top)
{
	//make sure the speed is positive
	yVel= abs(yVel);
	//bounce off the celling
	var bounceDistY=top-newY;
	newY=top+bounceDistY;
}
else if (newY>bottom)
{
	// put ball on the ground to more explicity show that it bounce of the ground
	newY=bottom;
	
	//with the new position calculate the speed to reach the targetheight
	// y_0=newY
	// y_1=targetHeight
	//y=y_0+v_0*t+0.5*g*t^2 => y_1=y_0+v_0*t+0.5*g*t^2
	//v=v_0+g*t =>v_1=0=v_0+g*t => v_0=-g*t
	// y_1 =y_0+(-g*t)*t+0.5*g*t^t => y_1=y_0-g*t^2+0.5*t*t^2 =>
	//y_1 = y_0 - 0.5 *g*t^2 => 0.5 *g *t^2=y_0-y_1 => t^2 =(y_0-y_1)/(0.5*g)
	//t= sqrt((y_0-y_1)/(0.5*g))
	//v_0= -g *sqrt((y_0-y_1)/(0.5*g))
	yVel=-grav*sqrt((newY-targetHeight)/(0.5*grav));
}



//update the y position of the ball
y=newY;



