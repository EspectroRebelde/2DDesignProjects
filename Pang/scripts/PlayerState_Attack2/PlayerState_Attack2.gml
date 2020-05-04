//check if the player wants to shoot (and can shoot)
//create a new hook
if (instance_number(objShot)<3)
	instance_create_layer(x,y-12,"Player",objShot);

state = PLAYERSTATE.FREE;


