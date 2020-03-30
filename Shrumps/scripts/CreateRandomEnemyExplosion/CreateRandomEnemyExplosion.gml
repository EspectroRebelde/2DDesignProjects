//Show an explosion around the player
var expX = x + random_range(-0.35 * sprite_width, 0.35 * sprite_width);
var expY = y + random_range(-0.4 * sprite_yoffset, 0.4 * (sprite_width - sprite_yoffset));

instance_create_depth(expX, expY ,depth-1, objExplosion);
