/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var elements = layer_get_all_elements("Balls");
if (0 == array_length_1d(elements) && !changedPhase){
	phase++;
	if (objPlayer.playerLifes < 3)
		objPlayer.playerLifes++;
	objPlayer.maxHooks = phase+1;
	objPlayer.maxShots = phase+1;
	instance_create_layer(0,0,"ControlLayer",objBackgroundManager);
	changedPhase = true;
	deleteLayerElements("LevelDesign")
	alarm[1] = 3 * room_speed;
}
