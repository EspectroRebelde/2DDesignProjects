/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
randomize();
if (irandom(3) <= powerUpPercentage3) //25%
	instance_create_layer(x+sprite_width/2,y+sprite_height/2,"Player",objNuke);
instance_destroy();