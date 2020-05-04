// first draw ourselfs
draw_self();

// let's draw as much cable as necesary

var curry=y+1;
var pixelsLeftToCover= iniY-curry;
while(pixelsLeftToCover> hookCableHeight)
{
	//drawn the whole cable
	draw_sprite(sprHookCable,0,x,curry);
	
	//increase the current y position
	curry+=hookCableHeight;
	pixelsLeftToCover-=hookCableHeight;
}


// draw the remaning part of the cable with a partial render
draw_sprite_part(sprHookCable,0,0,0,hookCablWidth, pixelsLeftToCover,x-hookCableOrigX,curry);

