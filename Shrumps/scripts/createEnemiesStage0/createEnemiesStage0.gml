randomise();
var enemyObj = noone;
var randVal = irandom(100);

if (randVal<40)
	enemyObj = objEnemy;
else if (randVal>=40 && randVal <85)
	enemyObj = objEnemy2;
else if (randVal>=85 && randVal <101)
	enemyObj = objEnemy3Big;

//Crates the enemy
createEnemy(enemyObj);
enemyObj.aircraftHealth = enemyObj.aircraftHealth*(argument0*0.5);

