if (curAlpha <= 1){
	
	if (stage == 0){
	layer_background_alpha(back_id0, curAlpha);
	layer_background_alpha(back_id1, 0);
	layer_background_alpha(back_id2, 0);
	}
	
	else if (stage == 1){
		layer_background_alpha(back_id0, 1 - curAlpha);
		layer_background_alpha(back_id1, curAlpha);
		layer_background_alpha(back_id2, 0);
	}
	
	else if (stage == 2){
		layer_background_alpha(back_id0, 0);
		layer_background_alpha(back_id1, 1 - curAlpha);
		layer_background_alpha(back_id2, curAlpha);
	}
	curAlpha += deltaAlpha;
}
else 
	instance_destroy();





