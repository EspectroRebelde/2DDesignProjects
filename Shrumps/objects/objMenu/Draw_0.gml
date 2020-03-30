/// @description Draw menu + Text
if (room = menu){
	draw_self();

	//draw the pointer related to the option we have selected currently
	var triX = x - 3;
	var tryY = y + 9 + selectedPointer*18;

	draw_sprite(sprMenuPointer, 0, triX, tryY);

	//var tectoAMostrar = "Seleccion Actual = " + string(selectedPointer)
	//draw_text(5,5,tectoAMostrar);

	draw_set_font(PixelArtMenu);
	if (showScore)
		draw_text(room_width/3, room_height-70,"Score: " + string(global.scorePlayer));
	draw_text((room_width/2)+40, (room_height/2)-28,"Continue");
	draw_line_width_color(130, 226,206, 211,3,c_red,c_red);

	draw_text((room_width/2)+40, (room_height/2)-10,"README");
	draw_line_width_color(130, 243,206, 228,3,c_red,c_red);

	draw_text(131,286,"PowerUps");
}

if (room = showCase){
	draw_set_font(PixelArtShowcase);
	draw_text(80,60,"Shooting:");
	draw_text(90,90,"Single");
	draw_text(90,125,"Shotgun");
	draw_text(90,155,"Spray");
	draw_text(90,185,"Circle");
	draw_text(90,220,"Mines");
	
	draw_text(200,60,"PowerUps:");
	draw_text(215,90,"Speed Up");
	draw_text(215,125,"Small Heal");
	draw_text(215,155,"MaxHP Up");
	draw_text(215,185,"MaxDMG Up");
	draw_text(215,220,"Health Refill");
	
	draw_text(110,285,"Specials:");
	draw_text(120,315,"New Life");
	draw_text(120,348,"NUKE");
	
	draw_text(10,10,"\"ESC\" TO RETURN ");
}
