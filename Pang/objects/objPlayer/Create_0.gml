/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
state = PLAYERSTATE.FREE;
momentumPreservation = 1;
notify = false;
if (global.finishedGame == true)
	weapon = 1;
else 
	weapon = 0;

enum PLAYERSTATE {
	
	FREE,				//0
	ATTACK,				//1
	LADDER				//2

}