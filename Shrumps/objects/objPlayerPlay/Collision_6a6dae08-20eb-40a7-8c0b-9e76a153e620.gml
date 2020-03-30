//Reduces the health
if (!invincibility)
	playerHealth -= other.damage;

var Expx = round( (x + other.x) / 2 );
var Expy = round( (y + other.y) / 2 );
instance_create_depth(Expx+10, Expy+10, depth - 1, objExplosion);

//Destroys enemy ship
instance_destroy(other);

//Sets alarms up for last stand player when death
if (playerHealth <= 0)
{
	if(playerLifes == 1){
		if(!isDead){
			isDead = true;
		
			alarm[1] = 150;
			alarm[2] = 1;
		}
	}
	else{
		playerLifes--;
		playerHealth = baseHealth;
		invincibility = true;
		alarm[3] = 2*room_speed;

	}
}