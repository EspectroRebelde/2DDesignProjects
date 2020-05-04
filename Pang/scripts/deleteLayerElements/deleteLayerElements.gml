var elements = layer_get_all_elements(argument0);
var i = 0
while (i < array_length_1d(elements)){
	var layerelement = elements[i];
	var inst = layer_instance_get_instance(layerelement);
	instance_destroy(inst)
	i++
}