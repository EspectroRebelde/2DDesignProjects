//check if the player wants to shoot (and can shoot)
//create a new hook
var nHooks = instance_number(objHook)
if (nHooks < maxHooks)
	instance_create_depth(x,y,5,objHook);

state = PLAYERSTATE.FREE;


