///@description Create an enemy depending on the room
var stage = room;
switch (stage){
	
	case roomMain:
		createEnemiesStage0(levelInStage);
		var timeToCreateNextEnemy = irandom_range(45,75);
		alarm[0] = timeToCreateNextEnemy;
		break;
	case roomMain1:
		createEnemiesStage1(levelInStage);
		var timeToCreateNextEnemy = irandom_range(80,120);
		alarm[0] = timeToCreateNextEnemy;
		break;
	case roomMain2:
		break;
	default: break;
	
}
/*
if (randVal<30)
	enemyObj = objEnemy;
else if (randVal>=30 && randVal <55)
	enemyObj = objEnemy2;
else if (randVal>=55 && randVal <65)
	enemyObj = objEnemy3Big;
else if (randVal>=65 && randVal <=70)
	enemyObj = objEnemy4;
else if (randVal>70 && randVal <=80)
	enemyObj = objEnemy5
	
//Crates the enemy
createEnemy(enemyObj);

//Reset the timer so we can create another one*/
//var timeToCreateNextEnemy = irandom_range(45,75);
/*if (enemyObj == objEnemy4)
	alarm[0] = 150;
	*/
//else
	//alarm[0] = timeToCreateNextEnemy;

