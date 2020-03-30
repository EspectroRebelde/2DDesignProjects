/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
self.mineHealth -= (2*other.damage);
instance_destroy(other)

if (mineHealth < 0)
	instance_destroy()