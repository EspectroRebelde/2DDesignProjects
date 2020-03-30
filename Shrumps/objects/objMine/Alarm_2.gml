/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
vspeed = 0;
with(objMine){	//Destroys other Mine if it's colliding
    if (id!=other.id) and (place_meeting(x,y,other)){
        instance_destroy();
    }
}