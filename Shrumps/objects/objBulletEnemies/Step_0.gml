//Destroys the bullet if the bullet is off scree

var mustDestroy  =	(y < sprite_height*0.1) ||
					(y > room_height + sprite_height) ||
					(x < sprite_width*0.1) ||
					(x > room_width + sprite_width);
					
//|| conque una sea TRUE salgo y devuelvo TRUE
//| conque una sea TRUE, devuelvo TRUE tras evaluar todas

/*var mustDestroy = false;
if(y < sprite_height)
	mustDestroy = true;

else if (y > room_height + sprite_height)
	mustDestroy = true
	
if (x < sprite_width)
	mustDestroy = true;
	
else if(x > room_width + sprite_width)
	mustDestroy = true;
*/

if (image_speed > 0) {
	if (image_index > image_number - 1) {
		image_index = 2;
		image_speed = 0;
	 }
}

if (mustDestroy)
	instance_destroy();
	
