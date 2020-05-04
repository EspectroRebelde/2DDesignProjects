// first define the velocity of the hook
hspeed=0;
vspeed=-5;


//keep the initial position (in Y)
iniY=y;

//and also do some preclaculations to avoid repeating them every tick
hookCableHeight=sprite_get_height(sprHookCable);
hookCablWidth=sprite_get_width(sprHookCable);
hookCableOrigX= sprite_get_xoffset(sprHookCable);
