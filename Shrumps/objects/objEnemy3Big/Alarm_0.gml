/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var player = instance_find(objPlayerPlay, 0);

if (player != noone){
	if (player.y > y+50){
		instance_create_depth(x+15, y+20, depth+5, objBulletEnemies);
		instance_create_depth(x-15, y+20, depth+5, objBulletEnemies);
	}
}
alarm[0] = 80;