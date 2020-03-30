/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Inserte aquí la descripción
// TVelocity and direction to player
setVelPointingPlayer();

//In a bit of time we're going to trigger an alarm abd start kamikaze
alarm[1] = tickToFollowPlayer;

vspeed = vel;

randomize();
if (irandom(100) > 85) 
	powerUpDrop = false;