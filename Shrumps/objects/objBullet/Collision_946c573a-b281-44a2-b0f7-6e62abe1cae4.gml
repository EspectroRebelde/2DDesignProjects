/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var newDamage = damage;
var player = instance_find(objPlayerPlay, 0);
if (player != noone){
	switch (objPlayerPlay.fireMode){
	
		case 0: 
			other.aircraftHealth -= newDamage;
			//show_debug_message(newDamage);
			break;
		case 1: 
			var newDamage = damage/2;
			if (StartY != noone)
				var dis = StartY - other.y;
			else
				var dis = 0;
			if (dis < minFallOff){
				newDamage = newDamage*3;
				other.aircraftHealth -= newDamage;
				//show_debug_message(newDamage);
				//show_debug_message(other.aircraftHealth);
				//show_debug_message(other.y);
				//show_debug_message(StartY)
			}
			else if (dis > maxFallOff){
				other.aircraftHealth -= 5;
				//show_debug_message(newDamage);
				//show_debug_message(other.y);
				//show_debug_message(StartY)
			}
			else{
				var fallOffRange = maxFallOff - minFallOff;
				var percentage = abs((dis - minFallOff)/fallOffRange);
				newDamage = newDamage*percentage;
				other.aircraftHealth -= newDamage;
				//show_debug_message(newDamage);
				//show_debug_message(other.y);
				//show_debug_message(StartY);
				//show_debug_message(percentage);
				//show_debug_message(fallOffRange);
			}
			break;		
		case 2:	//Spray
			var newDamage = damage/1.8;
			other.aircraftHealth -= newDamage;
			break;
			
		case 3:	//Circle
			var newDamage = damage/((1.8*5)/objBullet.speed);
			other.aircraftHealth -= newDamage;
			break;
		default: 
			other.aircraftHealth -= newDamage;
			//show_debug_message(newDamage);
			break;
			
	}
}

//destroy the bullet
instance_destroy();