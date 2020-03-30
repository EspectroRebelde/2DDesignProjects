/// @description Check Health & Position
// Puede escribir su código en este editor
if (aircraftHealth <= 0) {
	global.scorePlayer += scoreShip;
	instance_destroy();	
}

if (scrOutOfRoom()) {
	instance_destroy();
}

