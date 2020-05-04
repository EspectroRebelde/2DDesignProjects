deltaAlpha = 0.005; //Increase for faster transition, decrease for slower
curAlpha = 0;
stage = objManager.phase;


back_id0 = layer_background_get_id(layer_get_id("BackgroundStage0"));
back_id1 = layer_background_get_id(layer_get_id("BackgroundStage1"));
back_id2 = layer_background_get_id(layer_get_id("BackgroundStage2"));