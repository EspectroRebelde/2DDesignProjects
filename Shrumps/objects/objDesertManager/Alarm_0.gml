randomize();
//randomly select what type of desert to create

//seleccionamos una que no sea la anterior
var desertType = irandom(2);
var newDesertType = noone;

switch (desertType) {
	case 0:
		newDesertType = object20;
		break;
	case 1:
		newDesertType = object21;
		break;
	case 2:
		newDesertType = object22;
}

//create new island
instance_create_depth(random(room_width), -60, depth +3, newDesertType);

//reset alarm? 
var distBetweenDeserts = random_range(25,60);
var timeUntilNextDesert = round(distBetweenDeserts);

alarm[0] = timeUntilNextDesert;