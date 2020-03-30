/// @description Score + Health
// Puede escribir su código en este editor
if (room != menu){
draw_set_font(PixelArt);
if (showScore)
	draw_text(room_width+90, 910,"Score: " + string(global.scorePlayer));

//EMPTY HEARTS
var cont = 0;
var player = instance_find(objPlayerPlay, 0);
if (player != noone){
	while (cont < objPlayerPlay.playerLifes){
		//DRAW_SPRITE CARES FOR THE CENTER OF THE SPRITE
		draw_sprite(sprite50, -1, 20+(sprite_get_width(sprite50)*cont), 890);
		cont++; 
	}
}
//PLAYER HEARTS
var cont = 0;
if (player != noone){
	healthRepresent = objPlayerPlay.playerHealth + ((objPlayerPlay.playerLifes-1) * objPlayerPlay.baseHealth);
	while ( healthRepresent > 0 ){
		if (healthRepresent - objPlayerPlay.baseHealth >= objPlayerPlay.baseHealth){
			//DRAW_SPRITE_PART DOESN'T CARE FOR THE CENTER OF THE SPRITE
			draw_sprite_part(sprite48,   -1,    0,   0,  64 ,    56,   20+(sprite_get_width(sprite48)*cont), 890);
		}
		else{
			//DRAW_SPRITE_PART DOESN'T CARE FOR THE CENTER OF THE SPRITE
			draw_sprite_part(sprite48,   -1,    0,   0,   (healthRepresent*64)/objPlayerPlay.baseHealth,    56,   20+(sprite_get_width(sprite48)*cont), 890);
		}
		healthRepresent -= objPlayerPlay.baseHealth;
		cont++;
	}
}	
}