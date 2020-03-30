//Get the size of the enemy
var enemySprite = object_get_sprite(argument0);
var halfEnemyWidth = 0.5 * sprite_get_width(enemySprite);
var enemyHeight = sprite_get_height(enemySprite);

//Calculates a random point for the enmy to spawn
var enemyX = random_range(halfEnemyWidth, room_width - halfEnemyWidth)
var enemyY = -enemyHeight;

// Creates a new enemy
//if (argument0 == objEnemy3Big)
//	instance_create_depth(room_width/2, enemyY, depth, argument0);

//instance_create_depth(enemyX, enemyY, depth, argument0);
instance_create_layer(enemyX, enemyY, "enemies", argument0);

