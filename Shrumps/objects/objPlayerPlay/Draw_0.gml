/// @description Draw Player + Invincibility
//----------------- Checks invencibility
//if (invincibility){
	var interval = 16;
	if ((alarm[3] % interval) <= interval/2)
		gpu_set_fog(false, c_red, 0, 1);
	else
		gpu_set_fog(true, c_red, 0, 1);
//}
//else 

if (room != menu && room != showCase){
//----------------- Changes the sprite depending on the direction + Turns off motors
// Trial to change Idle to Sideways sprites: image_xscale / yscale
	if (movX == -1) {
	    if (movY = 1)
			draw_sprite_ext(sprLeftOff, image_index, x, ceil(y), 1,1,0,image_blend,image_alpha);
	        //sprite_index = sprLeftOff;
	    else
			draw_sprite_ext(sprLeft, image_index, x, ceil(y), 1,1,0,image_blend,image_alpha);
	        //sprite_index = sprLeft;
	} else if (movX == 1) {
	    if (movY = 1)
			draw_sprite_ext(sprRightOff, image_index, x, ceil(y), 1,1,0,image_blend,image_alpha);
	        //sprite_index = sprRightOff;
	    else
			draw_sprite_ext(sprRight, image_index, x, ceil(y), 1,1,0,image_blend,image_alpha);
	        //sprite_index = sprRight;
	} else if (movY = 1)
			draw_sprite_ext(sprIdleOff, image_index, x, ceil(y), 1,1,0,image_blend,image_alpha);
	    //sprite_index = sprIdleOff;
	  else
			draw_sprite_ext(sprIdle, image_index, x, ceil(y), 1,1,0,image_blend,image_alpha);
		//sprite_index = sprIdle;

	gpu_set_fog(false, c_red, 0, 1);
}