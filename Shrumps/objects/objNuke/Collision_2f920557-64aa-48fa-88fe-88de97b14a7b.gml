/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var elements = layer_get_all_elements("enemies");
var i = 0
while (i < array_length_1d(elements)){
	var layerelement = elements[i];
	var inst = layer_instance_get_instance(layerelement);
	instance_destroy(inst)
	i++
}
//audio_play_sound(global.lvl_snd,10,0);
instance_create_layer(0,0,"enemies",objEnemyManager);
instance_destroy();

