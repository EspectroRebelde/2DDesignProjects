/// @description FIRST ITERATION SAVE FILE
// Puede escribir su código en este editor


//if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

if (!menu && canUpdate){
	var file;
	file = file_text_open_write(SAVEFILE);
	file_text_write_real(file,global.scorePlayer);
	//file_text_write_real(file,room);
	file_text_close(file);
}
