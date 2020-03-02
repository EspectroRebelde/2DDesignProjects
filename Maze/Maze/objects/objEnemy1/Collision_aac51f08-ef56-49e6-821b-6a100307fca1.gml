/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
colision = colision%4;

switch (colision){
	case 0: 
		sprite_index = sprEnemyLeft;
		moveY = 0;
		moveX = -1;
		colision++;
		break;
	
	case 1:
		sprite_index = sprEnemyBack;
		moveY = -1;
		moveX = 0;
		colision++;
		break;	
	case 2:
		sprite_index = sprEnemyRight;
		moveY = 0;
		moveX = 1;
		colision++;
		break;	
	case 3:
		sprite_index = sprEnemy;
		moveY = 1;
		moveX = 0;
		colision++;
		break;	
	
}
x += moveX;
y += moveY;
	
	