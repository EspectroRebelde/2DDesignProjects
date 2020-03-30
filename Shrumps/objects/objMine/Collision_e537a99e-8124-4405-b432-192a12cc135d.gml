/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(objPlayerPlay))
	var damage = objPlayerPlay.damage*3;
other.aircraftHealth -= damage;
self.mineHealth -= other.damage;

if (mineHealth < 0)
	instance_destroy()