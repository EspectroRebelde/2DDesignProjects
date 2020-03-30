randomise();
var enemyObj = noone;
var randVal = irandom(100);

if (randVal<40)
	enemyObj = objEnemy4;
else if (randVal>=40 && randVal <80)
	enemyObj = objEnemy5;
else if (randVal>=80 && randVal <95)
	enemyObj = objEnemy7Big;
else if (randVal>=95 && randVal <101)
	enemyObj = objEnemy6;

//Crates the enemy
createEnemy(enemyObj);
////enemyObj.aircraftHealth = enemyObj.aircraftHealth*(argument0*0.5);

