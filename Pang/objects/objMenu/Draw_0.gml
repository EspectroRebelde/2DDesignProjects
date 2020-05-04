/// @description Draw menu + Text
if (room = menu){
	draw_self();

	//draw the pointer related to the option we have selected currently
	var triX = x - 15;
	var tryY = y + 50 + selectedPointer*100;

	draw_sprite(sprMenuPointer, 0, triX, tryY);
}