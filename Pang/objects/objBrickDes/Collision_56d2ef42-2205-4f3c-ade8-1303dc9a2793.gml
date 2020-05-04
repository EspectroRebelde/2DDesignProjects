/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (healthToCollapse > 3)
	image_index = 0;
else
	image_index = 4 - healthToCollapse;
healthToCollapse--;

if (image_index == 3)
	image_speed = 1;
