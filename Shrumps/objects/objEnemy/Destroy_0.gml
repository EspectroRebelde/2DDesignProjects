//Create explosion when destroy
//MOVED TO COLLISION ON PLAYER AS WELL
instance_create_depth(x, y, depth - 1, objExplosion);

if (powerUpDrop){
	//var powerUp = irandom_range(85,89); //DEBUG TRIALS
	var powerUp = irandom(120);
	if (powerUp <40){
		var newWeapon = irandom(4);
		var player = instance_find(objPlayerPlay, 0);
			if (player != noone){
				if (objPlayerPlay.fireMode == newWeapon) newWeapon = (newWeapon+1)%5;
				switch (newWeapon){
					case 0:
						var newPowerUp = instance_create_layer(x, y, "Instances", objChangeWeaponSingle);
					case 1:
						var newPowerUp = instance_create_layer(x, y, "Instances", objChangeWeaponShotgun);
					case 2:
						var newPowerUp = instance_create_layer(x, y, "Instances", objChangeWeaponSpray);
					case 3:
						var newPowerUp = instance_create_layer(x, y, "Instances", objChangeWeaponCircle);
					case 4:
						var newPowerUp = instance_create_layer(x, y, "Instances", objChangeWeaponMines);
				}
			}
			else 
				var newPowerUp = instance_create_layer(x, y, "Instances", objChangeWeaponSingle);
	}
					
	else if (powerUp >= 40 && powerUp <60)
		instance_create_layer(x, y, "enemies", objRestorePartialHealth);
	
	else if (powerUp >= 60 && powerUp <70)
		instance_create_layer(x, y, "enemies", objExtraSpeed);
	
	else if (powerUp >= 70 && powerUp <80)
		instance_create_layer(x, y, "enemies", objRestoreHealth);
	
	else if (powerUp >= 80 && powerUp <95)
		instance_create_layer(x, y, "enemies", objDamageUp);
	
	else if (powerUp >= 95 && powerUp <110)
		instance_create_layer(x, y, "enemies", objBaseHealthUp);
		
	else if (powerUp >= 110 && powerUp <115)
		instance_create_layer(x, y, "enemies", objRestoreLife);
		
	else //(powerUp >= 115 && powerUp <120)
		instance_create_layer(x, y, "enemies", objNuke);
	
}
