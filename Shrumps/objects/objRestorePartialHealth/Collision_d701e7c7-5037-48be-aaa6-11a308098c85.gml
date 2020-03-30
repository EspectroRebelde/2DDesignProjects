/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
objPlayerPlay.playerHealth += irandom_range(20,60);
//show_debug_message(objPlayerPlay.playerHealth);
if (objPlayerPlay.playerHealth > objPlayerPlay.baseHealth)
	objPlayerPlay.playerHealth = objPlayerPlay.baseHealth;
	
//show_debug_message(objPlayerPlay.playerHealth);
//show_debug_message("--");
instance_destroy();