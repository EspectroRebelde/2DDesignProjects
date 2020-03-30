/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (objPlayerPlay.playerLifes <= 4)
	objPlayerPlay.playerLifes++;
else
	objPlayerPlay.playerHealth = objPlayerPlay.baseHealth;
//show_debug_message(objPlayerPlay.playerLifes);

instance_destroy();