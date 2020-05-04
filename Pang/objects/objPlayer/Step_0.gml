//INPUTS
targetHSpeed= 0;
if (keyboard_check(vk_left))
	targetHSpeed-=maxSpeed;
else if (keyboard_check(vk_right))
	targetHSpeed+=maxSpeed;
	
keyAttack = keyboard_check_pressed(vk_control);
keyClimb = keyboard_check(vk_up);
keyClimbDown = keyboard_check(vk_down);


//Apply gravity if we're on the floor
if(y>room_height-16)
{
	//IsFalling
	y=room_height-16;
}
else
{	
	//gravity
	if(!onLadder)
		vspeed+=grav; 
}
//CheckStatus
if (onLadder && !place_meeting(x,y,objLadder))
	state = PLAYERSTATE.FREE;
//CheckTop
if (place_meeting(x,y-1,objLadder) && keyClimb)
	state = PLAYERSTATE.LADDER;
//CheckBottom
if (place_meeting(x,y+1,objLadder) && keyClimbDown)
	state = PLAYERSTATE.LADDER;

switch (state) {  
	
	case PLAYERSTATE.FREE: 
		PlayerState_Free(); 
		break;
	
	case PLAYERSTATE.ATTACK: 
		if (weapon == 0)
		PlayerState_Attack(); 
		else if (weapon == 1)
		PlayerState_Attack2(); 
		break;
	
	case PLAYERSTATE.LADDER: 
		if (momentumPreservation > 0)
			momentumPreservation -= 0.15;
		onLadder = true; 
		PlayerState_Ladder(); 
		break;

}





