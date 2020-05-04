//Speeed
var hspeedOffset = targetHSpeed-hspeed;
hspeedOffset=clamp(hspeedOffset,-accel,accel);
hspeed+=hspeedOffset;

//change the sprite according to the current movement
if (targetHSpeed>0)
{
	// ensure we're using the walk sprite
	if (sprite_index!=sprPlayerWalk)
	{
		sprite_index=sprPlayerWalk;
		image_index=0;
	}
	//we're wailking right, so the scale should be 1
	image_xscale=1;
}
else if (targetHSpeed<0)
{
	// ensure we're using the walk sprite
	if (sprite_index!=sprPlayerWalk)
	{
		sprite_index=sprPlayerWalk;
		image_index=0;
	}
	//we're wailking left, so the scale should be -1
	image_xscale=-1;
}
else
{
	// ensure we're now using the idle sprite (we just stopped)
	if (sprite_index!=sprPlayerIdle)
	{
		sprite_index=sprPlayerIdle;
		image_index=0;
	}
}

if(keyAttack)
	state = PLAYERSTATE.ATTACK;
	
momentumPreservation = 1;