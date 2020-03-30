/// @description FIRST ITERATION LOADFILE
// Puede escribir su código en este editor


if (file_exists(SAVEFILE)){
	var file = file_text_open_read(SAVEFILE);
	var target = file_text_read_real(file);
	//var pastRoom = file_text_read_real(file);
	file_text_close(file);
	global.scorePlayer = target;
}
else 
global.scorePlayer = 0;

if (!instance_exists(objPlayerPlay) && room!=menu)
	instance_create_layer(160,448, "Instances", objPlayerPlay);
