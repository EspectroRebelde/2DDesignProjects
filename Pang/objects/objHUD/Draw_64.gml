/// @description Score + Health
// Puede escribir su código en este editor
if (room != menu){

	//EMPTY HEARTS
	var cont = 0;
	var player = instance_find(objPlayer, 0);
	if (player != noone){
		while (cont < 3){
			//DRAW_SPRITE CARES FOR THE CENTER OF THE SPRITE
			draw_sprite(sprite50, -1, (room_width - 64) - sprite_get_width(sprite50)*(cont), sprite_get_height(sprite50)+12);
			cont++; 
		}
	}
	//PLAYER HEARTS
	var cont = 0;
	var player = instance_find(objPlayer, 0);
	if (player != noone){
		while (cont < objPlayer.playerLifes){
			//DRAW_SPRITE CARES FOR THE CENTER OF THE SPRITE
			draw_sprite(sprite48, -1, (room_width - 64) - sprite_get_width(sprite48)*cont, sprite_get_height(sprite48)+12);
			cont++; 
		}
	}
}