/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var player = instance_find(objPlayerPlay, 0);

if (player != noone){
		instance_create_depth(x, y+15, depth+5, objBulletEnemies);
}
alarm[0] = 40;