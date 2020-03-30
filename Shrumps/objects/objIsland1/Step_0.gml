/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (y > room_height + sprite_height) {
	
	//OPCION 1
	//MUEVE LAS ISLAS DE ABAJO A ARRIBA DE FORMA ALEATORIA CUANDO SALEN DE LA ROOM
	/*
	y = -sprite_height;
	
	x = random_range(0.5 * sprite_width, room_width - 0.5 * sprite_width);
	*/
	
	//OPCION 2	FUNCIONA CON OPCION 1 DE OBJISLANDMANAGER
	/*
	var islandMgr = instance_find(objIslandManager, 0);
	--islandMgr.islandsOnScreen;

	//destroy the island
	instance_destroy();
	*/
	//OPCION 3
	instance_destroy();
}