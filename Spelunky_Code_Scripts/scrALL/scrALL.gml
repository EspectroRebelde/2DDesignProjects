////
//// scrInitLevel()
////
//// Calls scrLevelGen(), scrRoomGen*(), and scrEntityGen() to build level.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//global.levelType = 0;
////global.currLevel = 16;
//if (global.currLevel > 4 and global.currLevel < 9) global.levelType = 1;
//if (global.currLevel > 8 and global.currLevel < 13) global.levelType = 2;
//if (global.currLevel > 12 and global.currLevel < 16) global.levelType = 3;
//if (global.currLevel == 16) global.levelType = 4;

//if (global.currLevel <= 1 or
//    global.currLevel == 5 or
//    global.currLevel == 9 or
//    global.currLevel == 13)
//{
//    global.hadDarkLevel = false;
//}

//// global.levelType = 3; // debug

//// DEBUG MODE //
///*
//if (global.currLevel == 2) global.levelType = 4;
//if (global.currLevel == 3) global.levelType = 2;
//if (global.currLevel == 4) global.levelType = 3;
//if (global.currLevel == 5) global.levelType = 4;
//*/

//// global.levelType = 0;

//global.startRoomX = 0;
//global.startRoomY = 0;
//global.endRoomX = 0;
//global.endRoomY = 0;
//oGame.levelGen = false;

//// this is used to determine the path to the exit (generally no bombs required)
//for (i = 0; i < 4; i += 1)
//{
//    for (j = 0; j < 4; j += 1)
//    {
//        global.roomPath[i,j] = 0;
//    }
//}

//// side walls
//if (global.levelType == 4)
//    k = 54;
//else if (global.levelType == 2)
//    k = 38;
//else if (global.lake)
//    k = 41;
//else
//    k = 33;
//for (i = 0; i <= 42; i += 1)
//{
//    for (j = 0; j <= k; j += 1)
//    {
//        if (not isLevel())
//        {
//            i = 999;
//            j = 999;
//        }
//        else if (global.levelType == 2)
//        {
//            if (i*16 == 0 or
//                i*16 == 656 or
//                j*16 == 0)
//            {
//                obj = instance_create(i*16, j*16, oDark);
//                obj.invincible = true;
//                obj.sprite_index = sDark;
//            }
//        }
//        else if (global.levelType == 4)
//        {
//            if (i*16 == 0 or
//                i*16 == 656 or
//                j*16 == 0)
//            {
//                obj = instance_create(i*16, j*16, oTemple);
//                obj.invincible = true;
//                if (not global.cityOfGold) obj.sprite_index = sTemple;
//            }
//        }
//        else if (global.lake)
//        {
//            if (i*16 == 0 or
//                i*16 == 656 or
//                j*16 == 0 or
//                j*16 >= 656)
//            {
//                obj = instance_create(i*16, j*16, oLush); obj.sprite_index = sLush;
//                obj.invincible = true;
//            }
//        }
//        else if (i*16 == 0 or
//            i*16 == 656 or
//            j*16 == 0 or
//            j*16 >= 528)
//        {
//            if (global.levelType == 0) { obj = instance_create(i*16, j*16, oBrick); obj.sprite_index = sBrick; }
//            else if (global.levelType == 1) { obj = instance_create(i*16, j*16, oLush); obj.sprite_index = sLush; }
//            else { obj = instance_create(i*16, j*16, oTemple); if (not global.cityOfGold) obj.sprite_index = sTemple; }
//            obj.invincible = true;
//        }
//    }
//}

//if (global.levelType == 2)
//{
//    for (i = 0; i <= 42; i += 1)
//    {
//        instance_create(i*16, 40*16, oDark);
//        //instance_create(i*16, 35*16, oSpikes);
//    }
//}

//if (global.levelType == 3)
//{
//    background_index = bgTemple;
//}

//global.temp1 = global.gameStart;
//scrLevelGen();

//global.cemetary = false;
//if (global.levelType == 1 and rand(1,global.probCemetary) == 1) global.cemetary = true;

//with oRoom
//{
//    if (global.levelType == 0) scrRoomGen();
//    else if (global.levelType == 1)
//    {
//        if (global.blackMarket) scrRoomGenMarket();
//        else scrRoomGen2();
//    }
//    else if (global.levelType == 2)
//    {
//        if (global.yetiLair) scrRoomGenYeti();
//        else scrRoomGen3();
//    }
//    else if (global.levelType == 3) scrRoomGen4();
//    else scrRoomGen5();
//}

//global.darkLevel = false;
////if (not global.hadDarkLevel and global.currLevel != 0 and global.levelType != 2 and global.currLevel != 16 and rand(1,1) == 1)
//if (not global.hadDarkLevel and not global.noDarkLevel and global.currLevel != 0 and global.currLevel != 1 and global.levelType != 2 and global.currLevel != 16 and rand(1,global.probDarkLevel) == 1)
//{
//    global.darkLevel = true;
//    global.hadDarkLevel = true;
//    //instance_create(oPlayer1.x, oPlayer1.y, oFlare);
//}

//if (global.blackMarket) global.darkLevel = false;

//global.genUdjatEye = false;
//if (not global.madeUdjatEye)
//{
//    if (global.currLevel == 2 and rand(1,3) == 1) global.genUdjatEye = true;
//    else if (global.currLevel == 3 and rand(1,2) == 1) global.genUdjatEye = true;
//    else if (global.currLevel == 4) global.genUdjatEye = true;
//}

//global.genMarketEntrance = false;
//if (not global.madeMarketEntrance)
//{
//    if (global.currLevel == 5 and rand(1,3) == 1) global.genMarketEntrance = true;
//    else if (global.currLevel == 6 and rand(1,2) == 1) global.genMarketEntrance = true;
//    else if (global.currLevel == 7) global.genMarketEntrance = true;
//}

//////////////////////////////
//// ENTITY / TREASURES
//////////////////////////////
//global.temp2 = global.gameStart;
//if (not isRoom("rTutorial") and not isRoom("rLoadLevel")) scrEntityGen();

//if (instance_exists(oEntrance) and not global.customLevel)
//{
//    oPlayer1.x = oEntrance.x+8;
//    oPlayer1.y = oEntrance.y+8;
//}

//if (global.darkLevel or
//    global.blackMarket or
//    global.snakePit or
//    global.cemetary or
//    global.lake or
//    global.yetiLair or
//    global.alienCraft or
//    global.sacrificePit or
//    global.cityOfGold)
//{
//    if (not isRoom("rLoadLevel"))
//    {
//        with oPlayer1 { alarm[0] = 10; }
//    }
//}

//if (global.levelType == 4) scrSetupWalls(864);
//else if (global.lake) scrSetupWalls(656);
//else scrSetupWalls(528);

//// add background details
//if (global.graphicsHigh)
//{
//    repeat(20)
//    {
//        // bg = instance_create(16*rand(1,42), 16*rand(1,33), oCaveBG);
//        if (global.levelType == 1 and rand(1,3) < 3)
//            tile_add(bgExtrasLush, 32*rand(0,1), 0, 32, 32, 16*rand(1,42), 16*rand(1,33), 10002);
//        else if (global.levelType == 2 and rand(1,3) < 3)
//            tile_add(bgExtrasIce, 32*rand(0,1), 0, 32, 32, 16*rand(1,42), 16*rand(1,33), 10002);
//        else if (global.levelType == 3 and rand(1,3) < 3)
//            tile_add(bgExtrasTemple, 32*rand(0,1), 0, 32, 32, 16*rand(1,42), 16*rand(1,33), 10002);
//        else
//            tile_add(bgExtras, 32*rand(0,1), 0, 32, 32, 16*rand(1,42), 16*rand(1,33), 10002);
//    }
//}

//oGame.levelGen = true;

//// generate angry shopkeeper at exit if murderer or thief
//if (global.murderer or global.thiefLevel > 0)
//{
//    with oExit
//    {
//        if (type == "Exit")
//        {
//            obj = instance_create(x, y, oShopkeeper);
//            obj.status = 4;
//        }
//    }
//    // global.thiefLevel -= 1;
//}

//with oTreasure
//{
//    if (collision_point(x, y, oSolid, 0, 0))
//    {
//        obj = instance_place(x, y, oSolid);
//        if (obj.invincible) instance_destroy();
//    }
//}

//with oWater
//{
//    if (sprite_index == sWaterTop or sprite_index == sLavaTop)
//    {
//        scrCheckWaterTop();
//    }
//    /*
//        obj = instance_place(x-16, y, oWater);
//        if (instance_exists(obj))
//        {
//            if (obj.sprite_index == sWaterTop or obj.sprite_index == sLavaTop)
//            {
//                if (type == "Lava") sprite_index = sLavaTop;
//                else sprite_index = sWaterTop;
//            }
//        }
//        obj = instance_place(x+16, y, oWater);
//        if (instance_exists(obj))
//        {
//            if (obj.sprite_index == sWaterTop or obj.sprite_index == sLavaTop)
//            {
//                if (type == "Lava") sprite_index = sLavaTop;
//                else sprite_index = sWaterTop;
//            }
//        }
//    */
//}

//global.temp3 = global.gameStart;

//#define scrCheckWaterTop
////
//// scrCheckWaterTop()
////
//// recursive function called in scrInitLevel() that checks for the surface of a
//// pool of water or lava and sets the sprite accordingly
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//obj = instance_place(x-16, y, oWater);
//if (instance_exists(obj))
//{
//    if (obj.sprite_index != sWaterTop and obj.sprite_index != sLavaTop)
//    {
//        with obj
//        {
//            if (type == "Lava") sprite_index = sLavaTop;
//            else sprite_index = sWaterTop;
//            scrCheckWaterTop();  
//        }
//    }
//}
//obj = instance_place(x+16, y, oWater);
//if (instance_exists(obj))
//{
//    if (obj.sprite_index != sWaterTop and obj.sprite_index != sLavaTop)
//    {
//        with obj
//        {
//            if (type == "Lava") sprite_index = sLavaTop;
//            else sprite_index = sWaterTop;
//            scrCheckWaterTop();  
//        }
//    }
//}

//#define scrLevelGen
////
//// scrLevelGen()
////
//// Sets the "room path" that Spelunky uses to determine the no-bombs/no-rope (in theory)
//// route to the exit.
//// 

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//global.startRoomX = rand(0,3);
//global.startRoomY = 0;
//roomX = global.startRoomX;
//roomY = 0;
//prevX = global.startRoomX;
//prevY = 0;
//global.roomPath[roomX, roomY] = 1;
//noStartX = -1;
//n = rand(0,3);

//global.sacrificePit = false;
//global.snakePit = false;
//global.alienCraft = false;
//global.yetiLair = false;

//// Black Market
//global.blackMarket = false;
////if (global.levelType == 1)

//if (global.levelType == 1 and not global.madeBlackMarket and global.genBlackMarket)
//{
//    global.blackMarket = true;
//    global.startRoomX = 0;
//    global.startRoomY = 0;
//    global.endRoomX = 3;
//    global.endRoomY = 3;
//    global.roomPath[0, 0] = 2;
//    global.roomPath[0, 1] = 2;
//    global.roomPath[0, 2] = 2;
//    global.roomPath[0, 3] = 3;
//    global.roomPath[1, 0] = 4;
//    global.roomPath[1, 1] = 4;
//    global.roomPath[1, 2] = 4;
//    global.roomPath[1, 3] = 1;
//    global.roomPath[2, 0] = 4;
//    global.roomPath[2, 1] = 4;
//    global.roomPath[2, 2] = 5;
//    global.roomPath[2, 3] = 1;
//    global.roomPath[3, 0] = 2;
//    global.roomPath[3, 1] = 2;
//    global.roomPath[3, 2] = 4;
//    global.roomPath[3, 3] = 3;
//    global.madeBlackMarket = true;
//    return 0;
//}

//if (global.levelType == 3 and rand(1,global.probSacPit) == 1)
//{
//    while (n == roomX)
//    {
//        n = rand(0,3);
//    }
    
//    for (i = 0; i < 4; i += 1)
//    {
//        if (i == 0) global.roomPath[n, i] = 7;
//        else if (i == 3) global.roomPath[n, i] = 9;
//        else global.roomPath[n, i] = 8;
//    }
//    global.sacrificePit = true;
//    oGame.idol = true;
//    oGame.damsel = true;
//}

//while (roomY < 4)
//{
//    d = false;
//    if (roomX == 0) n = rand(3,5) // right
//    else if (roomX == 3) n = rand(5,7) // left
//    else n = rand(1,5);
    
//    if (n < 3 or n > 5) // move left
//    {
//        if (roomX > 0)
//            if (global.roomPath[roomX-1, roomY] == 0) roomX -= 1;
//        else if (roomX < 3)
//            if (global.roomPath[roomX+1, roomY] == 0) roomX += 1;
//        else n = 5;
//    }
//    else if (n == 3 or n == 4) // move right
//    {
//        if (roomX < 3)
//            if (global.roomPath[roomX+1, roomY] == 0) roomX += 1;
//        else if (roomX > 0)
//            if (global.roomPath[roomX-1, roomY] == 0) roomX -= 1;
//        else n = 5;
//    }
    
//    if (n == 5) // move down
//    {
//        roomY += 1;
//        d = true;
//        if (roomY < 4)
//        {
//            global.roomPath[prevX, prevY] = 2;
//            global.roomPath[roomX, roomY] = 3;
//            d = true;
//        }
//        else
//        {
//            global.endRoomX = roomX;
//            global.endRoomY = roomY-1;
//        }
//    }
    
//    if (not d) global.roomPath[roomX, roomY] = 1;
//    prevX = roomX;
//    prevY = roomY;
//}

//// City of Gold
//if (global.cityOfGold) global.roomPath[rand(0,3), 2] = 6;

//// snake pit
//sX1 = 0;
//sX2 = 0;
//// global.probSnakePit = 1;
//if (global.levelType == 0)
//{
//    for (j = 0; j < 2; j += 1)
//    {
//        for (i = 0; i < 4; i += 1)
//        {
//            if (global.roomPath[i,j] == 0 and global.roomPath[i,j+1] == 0 and global.roomPath[i,j+2] == 0 and rand(1,global.probSnakePit) == 1)
//            {
//                global.roomPath[i,j] = 7; // top of pit
//                if (true)
//                {
//                    if (global.roomPath[i,j+2] == 0)
//                    {
//                        global.roomPath[i,j+1] = 8;
//                        if (j == 0)
//                        {
//                            if (global.roomPath[i,j+3] == 0)
//                            {
//                                global.roomPath[i,j+2] = 8; // middle of pit
//                                global.roomPath[i,j+3] = 9; // bottom of pit
//                            }
//                            else
//                            {
//                                global.roomPath[i,j+2] = 9;
//                            }
//                        }
//                        else
//                        {
//                            global.roomPath[i,j+2] = 9;
//                        }
//                    }
//                }
//                else
//                {
//                    global.roomPath[i,j+1] = 9;
//                }
//                global.snakePit = true;
//                i = 99;
//                j = 99;
//                break;
//            }
//        }
//    }
//}

//global.roomPath[0,4] = 0;
//global.roomPath[1,4] = 0;
//global.roomPath[2,4] = 0;
//global.roomPath[3,4] = 0;

////  Lake
////global.lake = false;
//if (global.lake)
//{
//    global.roomPath[0,3] = 8;
//    global.roomPath[1,3] = 8;
//    global.roomPath[2,3] = 8;
//    global.roomPath[3,3] = 8;
//    global.roomPath[0,4] = 7;
//    global.roomPath[1,4] = 7;
//    global.roomPath[2,4] = 7;
//    global.roomPath[3,4] = 7;
//    n = rand(0,3);
//    while (n == global.endRoomX)
//    {
//        n = rand(0,3);
//    }
//    global.roomPath[n,4] = 9;
//}

//// Moai
//if (not global.madeMoai and global.levelType == 2)
//{
//    if (global.currLevel == 9 and rand(1,4) == 1) global.madeMoai = true;
//    else if (global.currLevel == 10 and rand(1,3) == 1) global.madeMoai = true;
//    else if (global.currLevel == 11 and rand(1,2) == 1) global.madeMoai = true;
//    else if (global.currLevel == 12) global.madeMoai = true;
    
//    if (global.madeMoai) global.roomPath[rand(0,3), rand(1,2)] = 6;
//}
//else if (global.levelType == 2 and rand(1,global.probAlien) == 1) // alien craft
//{
//    k = rand(0,2);
//    j = rand(1,2);
//    for (i = k; i < 4; i += 1)
//    {
//        if (i == k) global.roomPath[i,j] = 7;
//        else if (i == 3) global.roomPath[i,j] = 9;
//        else global.roomPath[i,j] = 8;
//    }
//    global.alienCraft = true;
//}
//else if (global.levelType == 2 and not global.alienCraft and rand(1,global.probYetiLair) == 1) // yeti
//{
//    global.yetiLair = true;
//}

//// shop
//if (rand(1,global.currLevel) <= 2 and global.currLevel > 1 and not global.madeBlackMarket)
//{
//    i = 0;
//    for (k = 0; k < 4; k += 1)
//    {
//    for (j = 0; j < 4; j += 1)
//    {
//        global.roomPoss[j,k] = 0;
//        //j = rand(0,3);
//        //k = rand(0,3);
//        if (global.roomPath[j,k] == 0)
//        {
//            if (j < 3)
//            {
//                if (global.roomPath[j+1,k] == 1 or global.roomPath[j+1,k] == 2)
//                {
//                    //global.roomPath[j,k] = 4;
//                    global.roomPoss[j,k] = 4;
//                    i += 1;
//                    //global.shop = true;
//                    //break;
//                }
//            }
//            else if (j > 0)
//            {
//                if (global.roomPath[j-1,k] == 1 or global.roomPath[j-1,k] == 2)
//                {
//                    //global.roomPath[j,k] = 5;
//                    global.roomPoss[j,k] = 5;
//                    i += 1;
//                    //global.shop = true;
//                    //break;
//                }
//            }
//        }
//    }}
    
//    if (i > 0) {
//    n = rand(0,i-1);
//    for (k = 0; k < 4; k += 1)
//    {
//        for (j = 0; j < 4; j += 1)
//        {
//            if (global.roomPoss[j,k] != 0)
//            {
//                if (n == 0)
//                {
//                    global.roomPath[j,k] = global.roomPoss[j,k];
//                    global.shop = true;
//                    j = 4;
//                    k = 4;
//                    break;
//                }
//                else n -= 1;
//            }
//        }
//    }}
//}

//#define scrSetupWalls
////
//// scrSetupWalls()
////
//// Adds decorations to walls, changes their sprites depending on placement.
//// 

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//with oBrick
//{
//    up = false;
//    down = false;
//    left = false;
//    right = false;

//    if (y == 0 or collision_point(x, y-16, oBrick, 0, 0) or collision_point(x, y-16, oHardBlock, 0, 0)) { up = true; }
//    if (y >= argument0 or collision_point(x, y+16, oBrick, 0, 0) or collision_point(x, y+16, oHardBlock, 0, 0)) { down = true; }
//    if (collision_point(x-16, y, oBrick, 0, 0) or collision_point(x-16, y, oHardBlock, 0, 0)) { left = true; }
//    if (collision_point(x+16, y, oBrick, 0, 0) or collision_point(x+16, y, oHardBlock, 0, 0)) { right = true; }

//    if (not up)
//    {
//        sprite_index = sCaveUp;
//        if (global.graphicsHigh)
//        {
//            if (rand(1,3) < 3) tile_add(bgCaveTop, 0, 0, 16, 16, x, y-16, 3);
//            else tile_add(bgCaveTop, 16, 0, 16, 16, x, y-16, 3);
//        }
//        // instance_create(x, y-16, oCaveTop);
//    }
    
//    if (not down)
//    {
//        if (not up) sprite_index = sCaveUp2;
//        else sprite_index = sBrickDown;
//        //instance_create(x, y+16, oCaveBottom);
//    }
    
//    /*
//    if (not left)
//    {
//        instance_create(x-16, y, oCaveLeft);
//    }
    
//    if (not right)
//    {
//        instance_create(x+15, y, oCaveRight);
//    }
//    */
    
    
//}

//with oLush
//{
//    up = false;
//    down = false;
//    left = false;
//    right = false;

//    if (y == 0 or collision_point(x, y-16, oLush, 0, 0)) { up = true; }
//    if (y >= argument0 or collision_point(x, y+16, oLush, 0, 0)) { down = true; }
//    if (collision_point(x-16, y, oLush, 0, 0)) { left = true; }
//    if (collision_point(x+16, y, oLush, 0, 0)) { right = true; }


//    if (not up)
//    {
//        sprite_index = sLushUp;
//        if (global.graphicsHigh)
//        {
//            if (rand(1,8) == 1) tile_add(bgCaveTop2, 32, 0, 16, 16, x, y-16, 3);
//            else if (rand(1,3) < 3) tile_add(bgCaveTop2, 0, 0, 16, 16, x, y-16, 3);
//            else tile_add(bgCaveTop2, 16, 0, 16, 16, x, y-16, 3);
//        }
//    }
    
//    if (not down)
//    {
//        if (not up) sprite_index = sLushUp2;
//        else sprite_index = sLushDown;
        
//        if (not collision_point(x, y+16, oSolid, 0, 0) and global.graphicsHigh)
//        {
//            if (rand(1,12) == 1) tile_add(bgCaveTop2, 48, 0, 16, 16, x, y+16, 3);
//            else if (rand(1,12) == 1) tile_add(bgCaveTop2, 64, 0, 16, 16, x, y+16, 3);
//        }
//        //instance_create(x, y+16, oLushBottom);
//    }
    
//}

//with oDark
//{
//    up = false;
//    down = false;
//    left = false;
//    right = false;

//    if (y == 0 or collision_point(x, y-16, oDark, 0, 0)) { up = true; }
//    if (y >= argument0 or collision_point(x, y+16, oDark, 0, 0)) { down = true; }
//    if (collision_point(x-16, y, oDark, 0, 0)) { left = true; }
//    if (collision_point(x+16, y, oDark, 0, 0)) { right = true; }

//    if (not up)
//    {
//        sprite_index = sDarkUp;
//        if (global.graphicsHigh)
//        {
//            if (rand(1,3) < 3) tile_add(bgCaveTop3, 0, 0, 16, 16, x, y-16, 3);
//            else tile_add(bgCaveTop3, 16, 0, 16, 16, x, y-16, 3);
//        }
//    }

//    if (not down)
//    {
//        if (not up) sprite_index = sDarkUp2;
//        else sprite_index = sDarkDown;
//        //instance_create(x, y+16, oDarkBottom);
//    }
    
//    /*
//    if (not left)
//    {
//        instance_create(x-16, y, oDarkLeft);
//    }
    
//    if (not right)
//    {
//        instance_create(x+15, y, oDarkRight);
//    }
//    */
//}

//with oIce
//{
//    up = false;
//    down = false;
//    left = false;
//    right = false;

//    if (collision_point(x, y-16, oIce, 0, 0)) { up = true; }
//    if (collision_point(x, y+16, oIce, 0, 0)) { down = true; }
//    if (collision_point(x-16, y, oIce, 0, 0)) { left = true; }
//    if (collision_point(x+16, y, oIce, 0, 0)) { right = true; }

//    if (not up)
//    {
//        sprite_index = sIceUp;
//    }
//    if (not down)
//    {
//        if (not up) sprite_index = sIceUp2;
//        else sprite_index = sIceDown;
//        if (rand(1,20) == 1 and not collision_point(x, y+16, oSolid, 0, 0)) instance_create(x, y+16, oIceBottom);
//    }
//    if (not left)
//    {
//        if (not up and not down) sprite_index = sIceUDL;
//        else if (not up) sprite_index = sIceUL;
//        else if (not down) sprite_index = sIceDL;
//        else sprite_index = sIceLeft;
//    }
//    if (not right)
//    {
//        if (not up and not down) sprite_index = sIceUDR;
//        else if (not up) sprite_index = sIceUR;
//        else if (not down) sprite_index = sIceDR;
//        else sprite_index = sIceRight;
//    }
//    if (not up and not left and not right and down) sprite_index = sIceULR;
//    if (not down and not left and not right and up) sprite_index = sIceDLR;
//    if (up and down and not left and not right) sprite_index = sIceLR;
//    if (not up and not down and not left and not right)
//    {
//        sprite_index = sIceBlock;
//    }
//}

//with oTemple
//{
//    up = false;
//    down = false;
//    left = false;
//    right = false;

//    if (y == 0 or collision_point(x, y-16, oTemple, 0, 0) or collision_point(x, y+16, oTempleFake, 0, 0)) { up = true; }
//    if (y >= argument0 or collision_point(x, y+16, oTemple, 0, 0) or collision_point(x, y+16, oTempleFake, 0, 0)) { down = true; }
//    if (collision_point(x-16, y, oTemple, 0, 0) or collision_point(x-16, y, oTempleFake, 0, 0)) { left = true; }
//    if (collision_point(x+16, y, oTemple, 0, 0) or collision_point(x+16, y, oTempleFake, 0, 0)) { right = true; }

//    if (global.cityOfGold)
//    {
    
//    if (not up)
//    {
//        sprite_index = sGTempleUp;
//        if (global.graphicsHigh)
//        {
//            if (rand(1,4) == 1) tile_add(bgCaveTop4, 0, 0, 16, 16, x, y-16, 3);
//            else if (rand(1,4) == 1) tile_add(bgCaveTop4, 16, 0, 16, 16, x, y-16, 3);
//        }
//        if (not left and not right)
//        {
//        if (not down) sprite_index = sGTempleUp6;
//        else sprite_index = sGTempleUp5;
//        }
//        else if (not left)
//        {   
//        if (not down) sprite_index = sGTempleUp7;
//        else sprite_index = sGTempleUp3;
//        }
//        else if (not right)
//        {   
//        if (not down) sprite_index = sGTempleUp8;
//        else sprite_index = sGTempleUp4;
//        }
//        else if (left and right and not down)
//        {
//        sprite_index = sGTempleUp2;
//        }
//    }
//    else if (not down)
//    {
//        sprite_index = sGTempleDown;
//    }
    
//    }
//    else {
//    if (not up)
//    {
//        sprite_index = sTempleUp;
//        if (global.graphicsHigh)
//        {
//            if (rand(1,4) == 1) tile_add(bgCaveTop4, 0, 0, 16, 16, x, y-16, 3);
//            else if (rand(1,4) == 1) tile_add(bgCaveTop4, 16, 0, 16, 16, x, y-16, 3);
//        }
//        if (not left and not right)
//        {
//        if (not down) sprite_index = sTempleUp6;
//        else sprite_index = sTempleUp5;
//        }
//        else if (not left)
//        {   
//        if (not down) sprite_index = sTempleUp7;
//        else sprite_index = sTempleUp3;
//        }
//        else if (not right)
//        {   
//        if (not down) sprite_index = sTempleUp8;
//        else sprite_index = sTempleUp4;
//        }
//        else if (left and right and not down)
//        {
//        sprite_index = sTempleUp2;
//        }
//    }
//    else if (not down)
//    {
//        sprite_index = sTempleDown;
//    }}
//}

//with oTempleFake
//{
//    up = false;
//    down = false;
//    left = false;
//    right = false;

//    if (y == 0 or collision_point(x, y-16, oTemple, 0, 0) or collision_point(x, y-16, oTempleFake, 0, 0)) { up = true; }
//    if (collision_point(x, y+16, oTemple, 0, 0) or collision_point(x, y+16, oTempleFake, 0, 0)) { down = true; }
//    if (collision_point(x-16, y, oTemple, 0, 0) or collision_point(x-16, y, oTempleFake, 0, 0)) { left = true; }
//    if (collision_point(x+16, y, oTemple, 0, 0) or collision_point(x+16, y, oTempleFake, 0, 0)) { right = true; }

//    if (global.cityOfGold)
//    {
    
//    if (not up)
//    {
//        sprite_index = sGTempleUp;
//        if (global.graphicsHigh)
//        {
//            if (rand(1,4) == 1) tile_add(bgCaveTop4, 0, 0, 16, 16, x, y-16, 3);
//            else if (rand(1,4) == 1) tile_add(bgCaveTop4, 16, 0, 16, 16, x, y-16, 3);
//        }
//        if (not left and not right)
//        {
//        if (not down) sprite_index = sGTempleUp6;
//        else sprite_index = sGTempleUp5;
//        }
//        else if (not left)
//        {   
//        if (not down) sprite_index = sGTempleUp7;
//        else sprite_index = sGTempleUp3;
//        }
//        else if (not right)
//        {   
//        if (not down) sprite_index = sGTempleUp8;
//        else sprite_index = sGTempleUp4;
//        }
//        else if (left and right and not down)
//        {
//        sprite_index = sGTempleUp2;
//        }
//    }
//    else if (not down)
//    {
//        sprite_index = sGTempleDown;
//    }
    
//    }
//    else {

//    if (not up)
//    {
//        sprite_index = sTempleUp;
//        if (not left and not right)
//        {
//        if (not down) sprite_index = sTempleUp6;
//        else sprite_index = sTempleUp5;
//        }
//        else if (not left)
//        {   
//        if (not down) sprite_index = sTempleUp7;
//        else sprite_index = sTempleUp3;
//        }
//        else if (not right)
//        {   
//        if (not down) sprite_index = sTempleUp8;
//        else sprite_index = sTempleUp4;
//        }
//        else if (left and right and not down)
//        {
//        sprite_index = sTempleUp2;
//        }
//    }
//    else if (not down)
//    {
//        sprite_index = sTempleDown;
//    }}
//}

//with oWater
//{
//    if (type == "Water")
//    { 
//    up = false;
//    upWater = false;
//    down = false;
//    left = false;
//    right = false;

//    if (collision_point(x, y-16, oWater, 0, 0)) { upWater = true; }
//    if (collision_point(x, y-16, oSolid, 0, 0)) { up = true; }
//    if (collision_point(x, y+16, oSolid, 0, 0) and not collision_point(x, y+16, oWater, 0, 0)) { down = true; }

//    if (not up and not upWater)
//    {
//        sprite_index = sWaterTop;
//    }
    
//    if (upWater and collision_point(x, y-32, oWater, 0, 0) and down and rand(1,4) == 1)
//    {
//        sprite_index = sWaterBottomTall2;
//        water = instance_place(x, y-16, oWater);
//        if (water) water.sprite_index = sWaterBottomTall1;
//    }
//    else if ((up or upWater) and down)
//    {
//        n = rand(1,4);
//        switch (n)
//        {
//        case 1: { sprite_index = sWaterBottom; break; }
//        case 2: { sprite_index = sWaterBottom2; break; }
//        case 3: { sprite_index = sWaterBottom3; break; }
//        case 4: { sprite_index = sWaterBottom4; break; }
//        }
//    }
//    }
//}

//with oLava
//{
//    up = false;
//    upWater = false;
//    down = false;
//    left = false;
//    right = false;

//    if (collision_point(x, y-16, oWater, 0, 0)) { upWater = true; }
//    if (collision_point(x, y-16, oSolid, 0, 0)) { up = true; }
//    if (collision_point(x, y+16, oSolid, 0, 0)) { down = true; }

//    if (not up and not upWater)
//    {
//        sprite_index = sLavaTop;
//        if (rand(1,4) == 1) spurt = true;
//    }
    
//    /*
//    if (upWater and collision_point(x, y-32, oWater, 0, 0) and down and rand(1,4) == 1)
//    {
//        sprite_index = sWaterBottomTall2;
//        water = instance_place(x, y-16, oWater);
//        if (water) water.sprite_index = sWaterBottomTall1;
//    }
//    else if ((up or upWater) and down)
//    {
//        n = rand(1,4);
//        switch (n)
//        {
//        case 1: { sprite_index = sWaterBottom; break; }
//        case 2: { sprite_index = sWaterBottom2; break; }
//        case 3: { sprite_index = sWaterBottom3; break; }
//        case 4: { sprite_index = sWaterBottom4; break; }
//        }
//    }
//    */
//}

//with oVine
//{
//    up = false;
//    down = false;
//    left = false;
//    right = false;

//    if (collision_point(x+8, y-8, oLadder, 0, 0)) { up = true; }
//    if (collision_point(x+8, y+16, oLadder, 0, 0)) { down = true; }

//    if (not up)
//    {
//        sprite_index = sVineSource;
//    }
//    else if (not down)
//    {
//        sprite_index = sVineBottom;
//    }
//}

//with oBlock
//{
//    down = false;

//    if (collision_point(x, y+16, oBrick, 0, 0) or collision_point(x, y+16, oTemple, 0, 0) or collision_point(x, y+16, oHardBlock, 0, 0)) { down = true; }

//    // don't want push blocks next to lava until we tighten up liquid draining
//    if (collision_point(x-16, y, oLava, 0, 0) or collision_point(x+16, y, oLava, 0, 0)) down = false;
    
//    if (down and rand(1,4) == 1)
//    {
//        instance_create(x, y, oPushBlock);
//        instance_destroy();
//    }
//}

//with oTree
//{
//    up = false;
//    down = false;
//    left = false;
//    right = false;

//    if (collision_point(x, y-16, oTree, 0, 0)) { up = true; }
//    if (collision_point(x, y+16, oTree, 0, 0)) { down = true; }
//    if (collision_point(x-16, y, oTree, 0, 0)) { left = true; }
//    if (collision_point(x+16, y, oTree, 0, 0)) { right = true; }
    
//    if (not up)
//    {
//        if (global.cemetary) sprite_index = sTreeTopDead;
//        else sprite_index = sTreeTop;
//        depth = 1;
//    }
//}

//with oTreeBranch
//{
//    up = false;
//    down = false;
//    left = false;
//    right = false;

//    if (collision_point(x, y-16, oLeaves, 0, 0)) { up = true; }
//    if (collision_point(x, y+16, oTreeBranch, 0, 0)) { down = true; }
//    if (collision_point(x-16, y, oTreeBranch, 0, 0)) { left = true; }
//    if (collision_point(x+16, y, oTree, 0, 0)) { right = true; }
    
//    if (up)
//    {
//        instance_destroy();
//    }
//    if (right)
//    {
//        if (global.cemetary) sprite_index = sTreeBranchDeadL;
//        else sprite_index = sTreeBranchLeft;
//    }
//}

//#define scrEntityGen
////
//// scrEntityGen()
////
//// Generates enemies, traps, and treasure.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//// Note: depth of trees, statues is 9005

//global.LockedChest = false;
//global.Key = false;
//global.lockedChestChance = 8;

//if (global.levelType == 0)
//{
//    global.giantSpider = false;
//    global.genGiantSpider = false;
//    if (rand(1,6) == 1) global.genGiantSpider = true;
//    with oSolid
//    {
//        if (not isInShop(x, y) and y > 16)
//        {
//            if (type != "Altar")
//            {
//                scrTreasureGen();
//            }
        
//            // enemies
//            if (scrGetRoomX(x) != global.startRoomX or scrGetRoomY(y-16) != global.startRoomY)
//            {
//                if (y < room_height - 64 and 
//                    not collision_point(x, y+16, oSolid, 0, 0) and not collision_point(x, y+32, oSolid, 0, 0) and
//                    not collision_point(x, y+16, oWater, 0, 0) and not collision_point(x, y+32, oWater, 0, 0) and
//                    not collision_point(x, y+16, oEnemy, 0, 0))
//                {
//                    if (global.genGiantSpider and
//                        not global.giantSpider and
//                        not collision_point(x+16, y+16, oSolid, 0, 0) and
//                        not collision_point(x+16, y+32, oSolid, 0, 0) and
//                        rand(1,40) == 1)
//                    {
//                        instance_create(x, y+16, oGiantSpiderHang);
//                        global.giantSpider = true;
//                    }
//                    else if (global.darkLevel and rand(1,60) == 1) instance_create(x, y+16, oLamp);
//                    else if (global.darkLevel and rand(1,40) == 1) instance_create(x, y+16, oScarab);
//                    else if (rand(1,60) == 1) instance_create(x, y+16, oBat);
//                    else if (rand(1,80) == 1) instance_create(x, y+16, oSpiderHang);
//                }
            
//                if (not collision_point(x, y-16, oSolid, 0, 0))
//                {
//                    if (rand(1,60) == 1) instance_create(x, y-16, oSnake);
//                    else if (rand(1,800) == 1) instance_create(x, y-16, oCaveman);
//                }
//            }
//        }
//    }
    
//    // force generate chest
//    if (global.genUdjatEye and not global.LockedChest)
//    {
//        with oExit
//        {
//            if (not collision_point(x-8, y, oSolid, 0, 0) and
//                not collision_point(x-8, y+15, oTreasure, 0, 0) and
//                not collision_point(x-8, y+8, oChest, 0, 0) and
//                not collision_point(x-8, y+8, oSpikes, 0, 0))
//            {
//                instance_create(x-8, y+8, oLockedChest);
//                global.LockedChest = true;
//                break;
//            }
//            else if (not collision_point(x+8, y, oSolid, 0, 0) and
//                     not collision_point(x+8, y+15, oTreasure, 0, 0) and
//                     not collision_point(x+8, y+8, oChest, 0, 0) and
//                     not collision_point(x+8, y+8, oSpikes, 0, 0))
//            {
//                instance_create(x+16+8, y+8, oLockedChest);
//                global.LockedChest = true;
//                break;
//            }
//            else
//            {
//                instance_create(x+8, y+8, oLockedChest);
//                global.LockedChest = true;
//                break;
//            }
//        }
//    }
    
//    // generate key if locked chest has been generated
//    if (instance_exists(oLockedChest))
//    {
//        n = 1;
//        while (n < 8 and global.Key == false)
//        {
//            with oTreasure
//            {
//                if (rand(1,8) <= 1 and not collision_point(x, y, oSolid, 0, 0) and global.Key == false)
//                {
//                    if (type == "Gold Bars") instance_create(x, y+4, oKey);
//                    else instance_create(x, y, oKey);
//                    global.Key = true;
//                    instance_destroy();
//                    break;
//                }
//            }
//            n += 1;
//        }
//        if (not global.Key)
//        {
//            with oTreasure
//            {
//                if (not collision_point(x, y, oSolid, 0, 0))
//                {
//                    if (type == "Gold Bars") instance_create(x, y+4, oKey);
//                    else instance_create(x, y, oKey);
//                    global.Key = true;
//                    instance_destroy();
//                    break;
//                }
//            }
//        }
//    }
    
//    if (global.Key) global.madeUdjatEye = true;
    
//    with oBlock
//    {
//        if (not isInShop(x, y))
//        {
//            n = point_distance(x, y, oEntrance.x, oEntrance.y);
//            if (not isInShop(x, y) and
//                rand(1,4) == 1 and not
//                (y == oEntrance.y and n < 144) and
//                n > 48)
//            {
//                if (collision_point(x+16, y, oSolid, 0, 0) and not
//                    collision_rectangle(x-32, y, x-1, y+15, oSolid, 0, 0))
//                {
//                    if (global.darkLevel) instance_create(x, y, oArrowTrapLeftLit);
//                    else instance_create(x, y, oArrowTrapLeft);
//                    instance_destroy();
//                }
//                else if (collision_point(x-16, y, oSolid, 0, 0) and not
//                    collision_rectangle(x+16, y, x+48, y+15, oSolid, 0, 0))
//                {
//                    if (global.darkLevel) instance_create(x, y, oArrowTrapRightLit);
//                    else instance_create(x, y, oArrowTrapRight);
//                    instance_destroy();
//                }
//            }
//        }
//    }
//}
//else if (global.levelType == 1)
//{
//    global.ashGrave = false;
//    if (global.cemetary)
//    {
//        with oLush
//        {
//            // generate graves
//            if (not collision_point(x, y-16, oSolid, 0, 0) and
//                not collision_point(x, y-16, oEntrance, 0, 0) and
//                not collision_point(x, y-16, oExit, 0, 0) and
//                rand(1,20) == 1 and
//                x != 160 and x != 176 and x != 320 and x != 336 and x != 480 and x != 496)
//            {
//                obj = instance_create(x, y-16, oGrave);
//                if (not global.ashGrave and rand(1,40) == 1)
//                {
//                    obj.sprite_index = sGraveAsh;
//                    obj = instance_create(x+8, y+8, oShotgun);
//                    obj.cost = 0;
//                    obj.forSale = false;
//                    ashGrave = true;                
//                }
//                else if (not collision_point(x+8, y+8, oTreasure, 0, 0))
//                {
//                    if (rand(1,2) == 1) instance_create(x+8, y+8, oGoldNugget);
//                    else if (rand(1,4) == 1) instance_create(x+8, y+8, oSapphireBig);
//                    else if (rand(1,6) == 1) instance_create(x+8, y+8, oEmeraldBig);
//                    else if (rand(1,8) == 1) instance_create(x+8, y+8, oRubyBig);
//                }
//            }
//        }
//    }

//    with oSolid
//    {
//        // bg
//        if (rand(1,100) == 1 and not collision_point(x, y-16, oSolid, 0, 0)) tile_add(bgTrees, 0, 0, 16, 48, x, y-32, 9005);
        
//        if (not isInShop(x, y))
//        {
        
//        if (y > 32 and collision_point(x, y-16, oSolid, 0, 0) and global.genMarketEntrance and not global.madeMarketEntrance)
//        {
//            obj = instance_place(x, y-16, oSolid);
//            if (obj.type != "Tree" and type != "Altar" and not obj.invincible and rand(1,global.marketChance) <= 1)
//            {
//                instance_create(x, y-16, oXMarket);
//                invincible = true;
//                global.madeMarketEntrance = true;
//            }
//            else global.marketChance -= 1;
//        }
//        else if (type != "Tree" and type != "Altar" and y != 0 and
//                 not collision_rectangle(x, y-32, x+15, y-1, oSolid, false, true) and
//                 not collision_rectangle(x, y-16, x+15, y-1, oEnemy, 0, 0) and
//                 (not collision_point(x-16, y, oSolid, 0, 0) or not collision_point(x+16, y, oSolid, 0, 0)) and
//                 collision_point(x, y+16, oSolid, 0, 0) and
//                 not collision_point(x, y, oXMarket, 0, 0) and
//                 not isInShop(x, y) and
//                 point_distance(x, y, oEntrance.x, oEntrance.y) > 64)
//        {
//            if (global.darkLevel and not collision_point(x, y-32, oWater, 0, 0) and rand(1,20) == 1)
//            {
//                instance_create(x, y-32, oTikiTorch);
//            }
//            else if (rand(1,12) == 1 and
//                     x != 160 and x != 176 and x != 320 and x != 336 and x != 480 and x != 496)
//            {
//                if (collision_point(x, y-16, oSolid, 0, 0))
//                {
//                    sol = instance_nearest(x, y-16, oSolid);
//                    with sol { cleanDeath = true; instance_destroy(); }
//                }
//                instance_create(x, y, oSpearTrapBottom);
//                if (global.darkLevel) instance_create(x, y-16, oSpearTrapLit);
//                else instance_create(x, y-16, oSpearTrapTop);
//                cleanDeath = true;
//                instance_destroy();
//            }
//        }
        
//        if (type != "Altar")
//        {
//            if (global.cemetary) scrTreasureGen(10);
//            else scrTreasureGen();
//        }
    
//        // enemies
//        if (scrGetRoomX(x) != global.startRoomX or scrGetRoomY(y-16) != global.startRoomY)
//        {
//            if (y < room_height - 64 and 
//                not collision_point(x, y+16, oSolid, 0, 0) and not collision_point(x, y+32, oSolid, 0, 0) and
//                not collision_point(x, y+16, oWater, 0, 0) and not collision_point(x, y+32, oWater, 0, 0))
//            {
//                if (global.cemetary) n = 60;
//                else n = 80;
                
//                if (global.darkLevel and rand(1,40) == 1) instance_create(x, y+16, oScarab);
//                else if (rand(1,n) == 1) instance_create(x, y+16, oBat);
//                // else if (rand(1,40) == 1) instance_create(x, y+16, oSpiderHang);
//            }
            
//            if (y > 16 and not collision_point(x, y-16, oSolid, 0, 0) and
//                not collision_point(x, y, oEnemy, 0, 0) and
//                not collision_point(x, y, oSpikes, 0, 0))
//            {
//                if (global.cemetary)
//                {
//                    if (rand(1,25) == 1) instance_create(x, y-16, oZombie);
//                    else if (rand(1,160) == 1) instance_create(x, y-16, oVampire);
//                }
//                else if (not collision_point(x, y-16, oWater, 0, 0))
//                {
//                    if (global.blackMarket and (y mod 128 == 0)) n = 0; // to prevent mantraps from spawning near shopkeepers in black market 
//                    else n = 1;
//                    if (rand(1,60) == n) instance_create(x, y-16, oManTrap);
//                    else if (rand(1,60) == 1) instance_create(x, y-16, oCaveman);
//                    else if (rand(1,120) == 1) instance_create(x, y-16, oFireFrog);
//                    else if (rand(1,30) == 1) instance_create(x, y-16, oFrog);
//                }
//                else if (rand(1,120) == 1) instance_create(x, y-16, oFireFrog);
//                else if (rand(1,30) == 1) instance_create(x, y-16, oFrog);
//            }
//        }
        
//        // rock
//        }
//    }

//    // force market entrance
//    if (global.genMarketEntrance and not global.madeMarketEntrance)
//    {
//        with oSolid
//        {
//            if (y > 32 and collision_point(x, y-16, oSolid, 0, 0))
//            {
//                obj = instance_place(x, y-16, oSolid);
//                if (obj.type != "Tree" and type != "Altar" and not obj.invincible)
//                {
//                    instance_create(x, y-16, oXMarket);
//                    invincible = true;
//                    global.madeMarketEntrance = true;
//                }
//            }
//        }
//    }
    
//    with oVine
//    {
//        if (rand(1,15) == 1) instance_create(x, y, oMonkey);
//    }
    
//    with oWater
//    {
//        if (not collision_point(x, y, oSolid, 0, 0))
//        {
//            if (rand(1,30) == 1)
//            {
//                if (global.cemetary) instance_create(x+4, y+4, oDeadFish);
//                else instance_create(x+4, y+4, oPiranha);
//            }
//        }
//    }
//}
//else if (global.levelType == 2)
//{
//    with oSolid
//    {
//        if (not isInShop(x, y))
//        {
//        // enemies
//        n = 30;
//        if (global.yetiLair) n = 90;
        
//        if (scrGetRoomX(x) != global.startRoomX or scrGetRoomY(y-16) != global.startRoomY)
//        {
//            if (y < room_height - 64 and 
//                not collision_point(x, y+16, oSolid, 0, 0) and not collision_point(x, y+32, oSolid, 0, 0) and
//                not collision_point(x, y+16, oWater, 0, 0) and not collision_point(x, y+32, oWater, 0, 0))
//            {
//                if (global.darkLevel and rand(1,40) == 1) instance_create(x, y+16, oScarab);
//            }
//            else if (y > 16 and y < 592 and not collision_point(x, y-16, oSolid, 0, 0) and not isInShop(x, y))
//            {
//                if (rand(1,n) == 1) instance_create(x, y-16, oUFO);
//            }
//        }
        
//        if (y > 16 and y < 592 and
//            not collision_point(x, y-16, oSolid, 0, 0) and
//            not collision_point(x+8, y-8, oEnemy, 0, 0) and
//            not collision_point(x+8, y-1, oSpikes, 0, 0) and
//            point_distance(x, y, oEntrance.x, oEntrance.y) > 64 and
//            not isInShop(x, y))
//        {
//            if (rand(1,10) == 1 and sprite_index = sDark and not collision_rectangle(x, y-64, x+15, y-1, oSolid, 0, 0) and distance_to_object(oExit) > 64) instance_create(x, y-16, oSpringTrap);
//            else if (rand(1,20) == 1 and point_distance(x, y, oEntrance.x, oEntrance.y) > 64) instance_create(x, y-16, oYeti);
//        }
        
//        if (type != "Altar")
//        {    
//            scrTreasureGen();
//        }
//        }
//    }
//}
//else if (global.levelType == 3)
//{
//    global.TombLord = false;
//    global.genTombLord = false;
//    if (global.currLevel == 13) global.genTombLord = true;
//    else if (rand(1,4) == 1) global.genTombLord = true;
    
//    global.genGoldEntrance = false;
//    if (global.currLevel == 14) global.genGoldEntrance = true;
//    global.madeGoldEntrance = false;

//    with oSolid
//    {   
//        // bg
//        if (rand(1,100) == 1 and not collision_point(x, y-16, oSolid, 0, 0)) tile_add(bgStatues, 0, 0, 16, 48, x, y-32, 9005);
    
//        if (not isInShop(x, y))
//        {
        
//        // traps
//        if (y > 32 and not collision_point(x, y-16, oSolid, 0, 0) and global.genGoldEntrance and not global.madeGoldEntrance)
//        {
//            if (rand(1,global.goldChance) == 1)
//            {
//                instance_create(x, y-16, oGoldDoor);
//                invincible = true;
//                global.madeGoldEntrance = true;
//            }
//            else global.goldChance -= 1;
//        }
//        else if (type != "Tree" and type != "Altar" and y != 0 and
//                 not collision_point(x, y-16, oSolid, 0, 0) and
//                 not collision_point(x, y-16, oLava, 0, 0) and
//                 not collision_rectangle(x, y-16, x+15, y-1, oEnemy, 0, 0) and
//                 not collision_point(x, y-32, oSolid, 0, 0) and
//                 (not collision_point(x-16, y, oSolid, 0, 0) or not collision_point(x+16, y, oSolid, 0, 0)) and
//                 collision_point(x, y+16, oSolid, 0, 0) and
//                 not isInShop(x, y) and
//                 x != 160 and x != 176 and x != 320 and x != 336 and x != 480 and x != 496)
//        {
//            if (rand(1,12) == 1 and point_distance(x, y, oEntrance.x, oEntrance.y) > 64)
//            {
//                // to keep the spear trap from plugging up lava passage
//                if (collision_point(x-16, y-32, oSolid, 0, 0) and collision_point(x+16, y-32, oSolid, 0, 0) and
//                    not collision_point(x, y-32, oSolid, 0, 0))
//                {
//                    // do nothing
//                }
//                else
//                {
//                    if (collision_point(x, y-16, oSolid, 0, 0))
//                    {
//                        sol = instance_nearest(x, y-16, oSolid);
//                        with sol { cleanDeath = true; instance_destroy(); }
//                    }
//                    instance_create(x, y, oSpearTrapBottom);
//                    if (global.darkLevel) instance_create(x, y-16, oSpearTrapLit);
//                    else instance_create(x, y-16, oSpearTrapTop);
//                    cleanDeath = true;
//                    instance_destroy();
//                }
//            }
//        }
    
//        // enemies
//        if (y < room_height - 64 and 
//                not collision_point(x, y+16, oSolid, 0, 0) and not collision_point(x, y+32, oSolid, 0, 0) and
//                not collision_point(x, y+16, oWater, 0, 0) and not collision_point(x, y+32, oWater, 0, 0))
//        {
//            if (global.darkLevel and rand(1,40) == 1) instance_create(x, y+16, oScarab);
//        }

//        if (scrGetRoomX(x) != global.startRoomX or scrGetRoomY(y-16) != global.startRoomY and
//            not collision_point(x, y-16, oEnemy, 0, 0))
//        {         
//            if (y > 16 and not collision_point(x, y-16, oSolid, 0, 0))
//            {
//                if (global.genTombLord and
//                    not global.TombLord and
//                    not collision_rectangle(x, y-32, x+32, y-1, oSolid, 0, 0) and
//                    rand(1,40) == 1)
//                {
//                    instance_create(x, y-32, oTombLord);
//                    global.TombLord = true;
//                }
//                else if (rand(1,40) == 1) instance_create(x, y-16, oCaveman);
//                else if (rand(1,40) == 1) instance_create(x, y-16, oHawkman);
//                else if (rand(1,60) == 1)
//                {
//                    if (global.darkLevel) instance_create(x, y-16, oSmashTrapLit);
//                    else instance_create(x, y-16, oSmashTrap);
//                }
//            }
//        }
        
//        if (type != "Altar")
//        {       
//            scrTreasureGen();
//        }
//        }
//    }
    
//    // force generate gold door
//    if (global.genGoldEntrance and not global.madeGoldEntrance)
//    {
//        with oSolid
//        {
//            if (y > 32 and not collision_point(x, y-16, oSolid, 0, 0))
//            {
//                instance_create(x, y-16, oGoldDoor);
//                invincible = true;
//                global.madeGoldEntrance = true;
//                break;
//            }
//        }
//    }
    
//    with oBlock
//    {   
//        cleanDeath = true;
//        if (not isInShop(x, y))
//        {
//            n = point_distance(x, y, oEntrance.x, oEntrance.y);
//            if (not isInShop(x, y) and
//                rand(1,3) == 1 and not
//                (y == oEntrance.y and n < 144) and
//                n > 48)
//            {
//                if (collision_point(x+16, y, oSolid, 0, 0) and not
//                    collision_rectangle(x-32, y, x-1, y+15, oSolid, 0, 0))
//                {
//                    if (global.darkLevel) instance_create(x, y, oArrowTrapLeftLit);
//                    else instance_create(x, y, oArrowTrapLeft);
//                    instance_destroy();
//                }
//                else if (collision_point(x-16, y, oSolid, 0, 0) and not
//                    collision_rectangle(x+16, y, x+48, y+15, oSolid, 0, 0))
//                {
//                    if (global.darkLevel) instance_create(x, y, oArrowTrapRightLit);
//                    else instance_create(x, y, oArrowTrapRight);
//                    instance_destroy();
//                }
//            }
//        }
//    }
//}

//// add box of flares to dark level
//if (global.darkLevel)
//{
//    with oEntrance
//    {
//        if (not collision_point(x-16, y, oSolid, 0, 0))
//        {
//            instance_create(x-16+8, y+8, oFlareCrate);
//        }
//        else if (not collision_point(x+16, y, oSolid, 0, 0))
//        {
//            instance_create(x+16+8, y+8, oFlareCrate);
//        }
//        else
//        {
//            instance_create(x+8, y+8, oFlareCrate);
//        }
//    }
//}

//global.cleanSolids = false;

//#define scrTreasureGen
////
//// scrTreasureGen(bonesChance)
////
//// Generates crates, chests, gold, gems, and bones.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//// argument0: bones

//// alcove
//if (distance_to_object(oEntrance) < 32) return 0;
//if (distance_to_object(oExit) < 32) return 0;
//if (distance_to_object(oGoldIdol) < 64) return 0;

//colStuff = true;
//if (not collision_point(x, y-16, oSolid, 0, 0) and
//    not collision_point(x, y-1, oTreasure, 0, 0) and
//    not collision_point(x, y-8, oChest, 0, 0) and
//    not collision_point(x, y-8, oSpikes, 0, 0) and
//    not collision_point(x, y-8, oEntrance, 0, 0) and
//    not collision_point(x, y-8, oExit, 0, 0))
//{
//    colStuff = false;
//}

//if (not colStuff)
//{
//    if (rand(1,100) == 1) { instance_create(x+8, y-4, oRock); return 0; }
//    else if (rand(1,40) == 1) { instance_create(x+8, y-6, oJar); return 0; }
//}
//// alcove
//if (not colStuff and
//    collision_point(x, y-32, oSolid, 0, 0) and
//    (collision_point(x-16, y-16, oSolid, 0, 0) or collision_point(x+16, y-16, oSolid, 0, 0) or collision_point(x-16, y-16, oBlock, 0, 0) or collision_point(x+16, y-16, oBlock, 0, 0)))
//{
//    n = 60;
//    if (distance_to_object(oGiantSpider < 100)) n = 5;
    
//    if (global.levelType != 2 and rand(1,n) == 1) instance_create(x, y-16, oWeb);
//    else if (global.genUdjatEye and not global.LockedChest)
//    {
//        if (rand(1,global.lockedChestChance) == 1)
//        {
//            instance_create(x+8, y-8, oLockedChest);
//            global.LockedChest = true;
//        }
//        else global.lockedChestChance -= 1;
//    }
//    else if (rand(1,10) == 1)
//    {
//        instance_create(x+8, y-8, oCrate);
//    }
//    else if (rand(1,15) == 1)
//    {
//        instance_create(x+8, y-8, oChest);
//    }
//    else if (not oGame.damsel and rand(1,8) == 1 and not collision_point(x+8, y-8, oWater, 0, 0))
//    {
//        obj = instance_create(x+8, y-8, oDamsel);
//        obj.cost = 0;
//        obj.forSale = false;
//        oGame.damsel = true;
//    }
//    else if (rand(1,40-2*global.currLevel) <= 1 + argument0)
//    {
//        if (rand(1,8) == 1) instance_create(x, y-16, oFakeBones);
//        else
//        {
//            instance_create(x, y-16, oBones);
//            instance_create(x+12, y-4, oSkull);
//        }
//    }
//    else if (rand(1,3) == 1) instance_create(x+8, y-4, oGoldBar);
//    else if (rand(1,6) == 1) instance_create(x+8, y-8, oGoldBars);
//    else if (rand(1,6) == 1) instance_create(x+8, y-4, oEmeraldBig);
//    else if (rand(1,8) == 1) instance_create(x+8, y-4, oSapphireBig);
//    else if (rand(1,10) == 1) instance_create(x+8, y-4, oRubyBig);
//} // tunnel
//else if (not colStuff and
//    (collision_point(x-16, y-16, oSolid, 0, 0) and collision_point(x+16, y-16, oSolid, 0, 0)))
//{
//    n = 60;
//    if (distance_to_object(oGiantSpider < 100)) n = 10;
//    if (global.levelType != 2 and rand(1,n) == 1) instance_create(x, y-16, oWeb);
//    else if (rand(1,4) == 1) instance_create(x+8, y-4, oGoldBar);
//    else if (rand(1,8) == 1) instance_create(x+8, y-8, oGoldBars);
//    else if (rand(1,80-global.currLevel) <= 1 + argument0)
//    {
//        if (rand(1,8) == 1) instance_create(x, y-16, oFakeBones);
//        else
//        {
//            instance_create(x, y-16, oBones);
//            instance_create(x+12, y-4, oSkull);
//        }
//    }
//    else if (rand(1,8) == 1) instance_create(x+8, y-4, oEmeraldBig);
//    else if (rand(1,9) == 1) instance_create(x+8, y-4, oSapphireBig);
//    else if (rand(1,10) == 1) instance_create(x+8, y-4, oRubyBig);
//} // normal
//else if (not collision_point(x, y-16, oSolid, 0, 0) and
//    not collision_point(x, y-8, oChest, 0, 0) and
//    not collision_point(x, y-8, oSpikes, 0, 0) and
//    not collision_point(x, y-8, oEntrance, 0, 0) and
//    not collision_point(x, y-8, oExit, 0, 0))
//{
//    if (rand(1,40) == 1) instance_create(x+8, y-4, oGoldBar);
//    else if (rand(1,50) == 1) instance_create(x+8, y-8, oGoldBars);
//    else if (rand(1,140-2*global.currLevel) <= 1 + argument0)
//    {
//        if (rand(1,8) == 1) instance_create(x, y-16, oFakeBones);
//        else
//        {
//            instance_create(x, y-16, oBones);
//            instance_create(x+12, y-4, oSkull);
//        }
//    }
//}

//#define scrGetRoomX
////
//// scrGetRoomX(x)
////
//// Returns the horizontal room number of a room given the x-coord.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//tx = argument0;

//if (tx < 160+16) return 0;
//else if (tx >= 160+16 and tx < 320+16) return 1;
//else if (tx >= 320+16 and tx < 480+16) return 2;
//else if (tx >= 480+16) return 3;

//return -1;

//#define scrGetRoomY
////
//// scrGetRoomY(y)
////
//// Returns the vertical room number of a room given the y-coord.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//ty = argument0;

//if (ty < 128+16) return 0;
//else if (ty >= 128+16 and ty < 256+16) return 1;
//else if (ty >= 256+16 and ty < 384+16) return 2;
//else if (ty >= 384+16 and ty < 512+16) return 3;
//else if (ty >= 512+16) return 4;

//return -1;

//#define scrRoomGen
////
//// scrRoomGen1()
////
//// Room generation for Area 1, the Mines.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

///*
//Note:

//ROOMS are 10x8 tile areas.

//strTemp = "0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000";

//OBSTACLES are 5x3 tile chunks that are randomized within rooms.
           
//strObs = "00000
//          00000
//          00000";
          
//The string representing a room or obstacle must be laid out unbroken:
//*/
//strTemp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000";

//roomPath = global.roomPath[scrGetRoomX(x), scrGetRoomY(y)];
//roomPathAbove = -1;
//shopType = "General";
//if (scrGetRoomY(y) != 0) roomPathAbove = global.roomPath[scrGetRoomX(x), scrGetRoomY(y-128)];

//if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY) // start room
//{
//    if (roomPath == 2) n = rand(5,8);
//    else n = rand(1,4);
//    switch(n)
//    {
//        case 1: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "00000000000008000000000000000000L000000000P111111000L111111000L00111111111111111"; break; }
//        case 4: { strTemp = "0000000000008000000000000000000000000L000111111P000111111L001111100L001111111111"; break; }
//        // hole
//        case 5: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000002021111120"; break; }
//        case 6: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000002021111120"; break; }
//        case 7: { strTemp = "00000000000008000000000000000000L000000000P111111000L111111000L00011111111101111"; break; }
//        case 8: { strTemp = "0000000000008000000000000000000000000L000111111P000111111L001111000L001111011111"; break; }
//    }
//}
//else if (scrGetRoomX(x) == global.endRoomX and scrGetRoomY(y) == global.endRoomY) // end room
//{
//    if (roomPathAbove == 2) n = rand(2,4);
//    else n = rand(3,6);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000006000060000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "00000000000010021110001001111000110111129012000000111111111021111111201111111111"; break; }
//        case 4: { strTemp = "00000000000111200100011110010021111011000000002109011111111102111111121111111111"; break; }
//        // no drop
//        case 5: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 6: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"; break; }
//    }
//}
//else if (roomPath == 0) // side room
//{
//    if (global.currLevel > 1 and not oGame.altar and rand(1,16) == 1)
//    {
//        n = 11;
//        oGame.altar = true;
//    }
//    else if (oGame.idol or scrGetRoomY(y) == 3)
//    {
//        n = rand(1,9);
//    }
//    else
//    {
//        n = rand(1,10);
//        if (n == 10) oGame.idol = true;
//        // else n = rand(1,9);
//    }

//    switch(n)
//    {
//        // upper plats
//        case 1: { strTemp = "00000000000010111100000000000000011010000050000000000000000000000000001111111111"; break; }
//        // high walls
//        case 2: { strTemp = "110000000040L600000011P000000011L000000011L5000000110000000011000000001111111111"; break; }
//        case 3: { strTemp = "00000000110060000L040000000P110000000L110050000L11000000001100000000111111111111"; break; }
//        case 4: { strTemp = "110000000040L600000011P000000011L000000011L0000000110000000011000000001112222111"; break; }
//        case 5: { strTemp = "00000000110060000L040000000P110000000L110000000L11000000001100000000111112222111"; break; }
//        case 6: { strTemp = "11111111110221111220002111120000022220000002222000002111120002211112201111111111"; break; }
//        case 7: { strTemp = "11111111111112222111112000021111102201111120000211111022011111200002111112222111"; break; }
//        case 8: { strTemp = "11111111110000000000110000001111222222111111111111112222221122000000221100000011"; break; }
//        case 9: { strTemp = "121111112100L2112L0011P1111P1111L2112L1111L1111L1111L1221L1100L0000L001111221111"; break; }
//        // idols
//        case 10: { strTemp = "22000000220000B0000000000000000000000000000000000000000000000000I000001111A01111"; break; }
//        // altars
//        case 11: { strTemp = "220000002200000000000000000000000000000000000000000000x0000002211112201111111111"; break; }
//    }
//}
//else if (roomPath == 0 or roomPath == 1) // main room
//{
//    switch(rand(1,12))
//    {
    
//        // basic rooms
//        case 1: { strTemp = "60000600000000000000000000000000000000000050000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "60000600000000000000000000000000000000005000050000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "60000600000000000000000000000000050000000000000000000000000011111111111111111111"; break; }
//        case 4: { strTemp = "60000600000000000000000600000000000000000000000000000222220000111111001111111111"; break; }
//        case 5: { strTemp = "11111111112222222222000000000000000000000050000000000000000000000000001111111111"; break; }
//        case 6: { strTemp = "11111111112111111112022222222000000000000050000000000000000000000000001111111111"; break; }
//        // low ceiling
//        case 7: { strTemp = "11111111112111111112211111111221111111120111111110022222222000000000001111111111"; break; }
//        // ladders
//        case 8: {
//            if (rand(1,2) == 1) strTemp = "1111111111000000000L111111111P000000000L5000050000000000000000000000001111111111";
//            else strTemp = "1111111111L000000000P111111111L0000000005000050000000000000000000000001111111111"; break;
//        }
//        case 9: { strTemp = "000000000000L0000L0000P1111P0000L0000L0000P1111P0000L1111L0000L1111L001111111111"; break; }
//        // upper plats
//        case 10: { strTemp = "00000000000111111110001111110000000000005000050000000000000000000000001111111111"; break; }
//        case 11: { strTemp = "00000000000000000000000000000000000000000021111200021111112021111111121111111111"; break; }
//        // treasure below
//        case 12: {
//            if (rand(1,2) == 1) strTemp = "2222222222000000000000000000L001111111P001050000L011000000L010000000L01111111111";
//            else strTemp = "222222222200000000000L000000000P111111100L500000100L000000110L000000011111111111"; break;
//        }
//    }
//}
//else if (roomPath == 3) // main room
//{
//    switch(rand(1,8))
//    {
    
//        // basic rooms
//        case 1: { strTemp = "00000000000000000000000000000000000000000050000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "00000000000000000000000000000050000500000000000000000000000011111111111111111111"; break; }
//        case 4: { strTemp = "00000000000000000000000600000000000000000000000000000111110000111111001111111111"; break; }
//        // upper plats
//        case 5: { strTemp = "00000000000111111110001111110000000000005000050000000000000000000000001111111111"; break; }
//        case 6: { strTemp = "00000000000000000000000000000000000000000021111200021111112021111111121111111111"; break; }
//        case 7: { strTemp = "10000000011112002111111200211100000000000022222000111111111111111111111111111111"; break; }
//        // treasure below
//        case 8: {
//            if (rand(1,2) == 1) strTemp = "0000000000000000000000000000L001111111P001050000L011000000L010000000L01111111111";
//            else strTemp = "000000000000000000000L000000000P111111100L500000100L000000110L000000011111111111"; break;
//        }
//    }
//}
//else if (roomPath == 4) // shop
//{
//    strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..Kiiii000bbbbbbbbbb";
//    n = rand(1,7);
//    // n = 6;
//    switch(n)
//    {
//        case 1: { shopType = "General"; break; }
//        case 2: { shopType = "Bomb"; break; }
//        case 3: { shopType = "Weapon"; break; }
//        case 4: { shopType = "Rare"; break; }
//        case 5: { shopType = "Clothing"; break; }
//        case 6: { shopType = "Craps"; strTemp = "11111111111111111111111122111111Kl000211..bQ00W010.0+00000k0.q+dd00000bbbbbbbbbb"; break; }
//        case 7: { shopType = "Kissing"; strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..K00D0000bbbbbbbbbb"; oGame.damsel = true; break; }
//    }
//}
//else if (roomPath == 5) // shop
//{
//    strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...000iiiiK..bbbbbbbbbb";
//    n = rand(1,7);
//    // n = 6;
//    switch(n)
//    {
//        case 1: { shopType = "General"; break; }
//        case 2: { shopType = "Bomb"; break; }
//        case 3: { shopType = "Weapon"; break; }
//        case 4: { shopType = "Rare"; break; }
//        case 5: { shopType = "Clothing"; break; }
//        case 6: { shopType = "Craps"; strTemp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000dd+q.bbbbbbbbbb"; break; }
//        case 7: { shopType = "Kissing"; strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...0000D00K..bbbbbbbbbb"; oGame.damsel = true; break; }
//    }
//}
//else if (roomPath == 8) // snake pit
//{
//    switch(rand(1,1))
//    {
//        case 1: { strTemp = "111000011111s0000s11111200211111s0000s11111200211111s0000s11111200211111s0000s11"; break; }
//    }
//}
//else if (roomPath == 9) // snake pit bottom
//{
//    switch(rand(1,1))
//    {
//        case 1: { strTemp = "111000011111s0000s1111100001111100S0001111S0110S11111STTS1111111M111111111111111"; break; }
//    }    
//}
//else // drop
//{
//    if (roomPath == 7) n = rand(4,12);
//    else if (roomPathAbove != 2) n = rand(1,12);
//    else n = rand(1,8);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000006000060000000000000000000000006000060000000000000000000000000000000000"; break; }
//        case 2: { strTemp = "00000000006000060000000000000000000000000000050000000000000000000000001202111111"; break; }
//        case 3: { strTemp = "00000000006000060000000000000000000000050000000000000000000000000000001111112021"; break; }
//        case 4: { strTemp = "00000000006000060000000000000000000000000000000000000000000002200002201112002111"; break; }
//        case 5: { strTemp = "00000000000000220000000000000000200002000112002110011100111012000000211111001111"; break; }
//        case 6: { strTemp = "00000000000060000000000000000000000000000000000000001112220002100000001110111111"; break; }
//        case 7: { strTemp = "00000000000060000000000000000000000000000000000000002221110000000001201111110111"; break; }
//        case 8: { strTemp = "00000000000060000000000000000000000000000000000000002022020000100001001111001111"; break; }
//        case 9: { strTemp = "11111111112222222222000000000000000000000000000000000000000000000000001120000211"; break; }
//        case 10: { strTemp = "11111111112222111111000002211100000002110000000000200000000000000000211120000211"; break; }
//        case 11: { strTemp = "11111111111111112222111220000011200000000000000000000000000012000000001120000211"; break; }
//        case 12: { strTemp = "11111111112111111112021111112000211112000002112000000022000002200002201111001111"; break; }
//    }
//}
//// Add obstacles

//for (i = 1; i < 81; i += 1)
//{
//    j = i;
  
//    strObs1 = "00000";
//    strObs2 = "00000";
//    strObs3 = "00000";
//    tile = string_char_at(strTemp, i);
    
//    if (tile == "8")
//    {
//        switch(rand(1,8))
//        {
//            case 1: { strObs1 = "00900"; strObs2 = "01110"; strObs3 = "11111"; break; }
//            case 2: { strObs1 = "00900"; strObs2 = "02120"; strObs3 = "02120"; break; }
//            case 3: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "92222"; break; }
//            case 4: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "22229"; break; }
//            case 5: { strObs1 = "00000"; strObs2 = "11001"; strObs3 = "19001"; break; }
//            case 6: { strObs1 = "00000"; strObs2 = "10011"; strObs3 = "10091"; break; }
//            case 7: { strObs1 = "11111"; strObs2 = "10001"; strObs3 = "40094"; break; }
//            case 8: { strObs1 = "00000"; strObs2 = "12021"; strObs3 = "12921"; break; }
//        }
//    }
//    else if (tile == "5") // ground
//    {
//        switch(rand(1,16))
//        {
//            case 1: { strObs1 = "11111"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 2: { strObs1 = "00000"; strObs2 = "11110"; strObs3 = "00000"; break; }
//            case 3: { strObs1 = "00000"; strObs2 = "01111"; strObs3 = "00000"; break; }
//            case 4: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "11111"; break; }
//            case 5: { strObs1 = "00000"; strObs2 = "20200"; strObs3 = "17177"; break; }
//            case 6: { strObs1 = "00000"; strObs2 = "02020"; strObs3 = "71717"; break; }
//            case 7: { strObs1 = "00000"; strObs2 = "00202"; strObs3 = "77171"; break; }
//            case 8: { strObs1 = "00000"; strObs2 = "22200"; strObs3 = "11100"; break; }
//            case 9: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "01110"; break; }
//            case 10: { strObs1 = "00000"; strObs2 = "00222"; strObs3 = "00111"; break; }
//            case 11: { strObs1 = "11100"; strObs2 = "22200"; strObs3 = "00000"; break; }
//            case 12: { strObs1 = "01110"; strObs2 = "02220"; strObs3 = "00000"; break; }
//            case 13: { strObs1 = "00111"; strObs2 = "00222"; strObs3 = "00000"; break; }
//            case 14: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "21112"; break; }
//            case 15: { strObs1 = "00000"; strObs2 = "20100"; strObs3 = "77117"; break; }
//            case 16: { strObs1 = "00000"; strObs2 = "00102"; strObs3 = "71177"; break; }
//        }
//    }
//    else if (tile == "6") // air
//    {
//        switch(rand(1,10))
//        {
//            case 1: { strObs1 = "11111"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 2: { strObs1 = "22222"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 3: { strObs1 = "11100"; strObs2 = "22200"; strObs3 = "00000"; break; }
//            case 4: { strObs1 = "01110"; strObs2 = "02220"; strObs3 = "00000"; break; }
//            case 5: { strObs1 = "00111"; strObs2 = "00222"; strObs3 = "00000"; break; }
//            case 6: { strObs1 = "00000"; strObs2 = "01110"; strObs3 = "00000"; break; }
//            case 7: { strObs1 = "00000"; strObs2 = "01110"; strObs3 = "02220"; break; }
//            case 8: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "01110"; break; }
//            case 9: { strObs1 = "00000"; strObs2 = "00220"; strObs3 = "01111"; break; }
//            case 10: { strObs1 = "00000"; strObs2 = "22200"; strObs3 = "11100"; break; }
//        }
//    }
    
//    if (tile == "5" or tile == "6" or tile == "8")
//    {
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs1, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs2, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs3, strTemp, j);
//    }
//}

//// Generate the tiles
//for (j = 0; j < 8; j += 1)
//{
//    for (i = 1; i < 11; i += 1)
//    {
//        tile = string_char_at(strTemp, i+j*10);
//        xpos = x + (i-1)*16;
//        ypos = y + j*16;
//        if (tile == "1" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,10) == 1) instance_create(xpos, ypos, oBlock);
//            else
//            {
//                instance_create(xpos, ypos, oBrick);
//            }
//        }
//        else if (tile == "2" and rand(1,2) == 1 and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,10) == 1) instance_create(xpos, ypos, oBlock);
//            else
//            {
//                instance_create(xpos, ypos, oBrick);
//            }
//        }
//        else if (tile == "L") instance_create(xpos, ypos, oLadderOrange);
//        else if (tile == "P") instance_create(xpos, ypos, oLadderTop);
//        else if (tile == "7" and rand(1,3) == 1) instance_create(xpos, ypos, oSpikes);
//        else if (tile == "4" and rand(1,4) == 1) instance_create(xpos, ypos, oPushBlock);
//        else if (tile == "9")
//        {
//            block = instance_create(xpos, ypos+16, oBrick);
//            if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY)
//                instance_create(xpos, ypos, oEntrance);
//            else
//            {
//                instance_create(xpos, ypos, oExit);
//                global.exitX = xpos;
//                global.exitY = ypos;
//                block.invincible = true;
//            }
//        }
//        else if (tile == "A")
//        {
//            instance_create(xpos, ypos, oAltarLeft);
//            instance_create(xpos+16, ypos, oAltarRight);
//        }
//        else if (tile == "x")
//        {
//            instance_create(xpos, ypos, oSacAltarLeft);
//            instance_create(xpos+16, ypos, oSacAltarRight);
//            tile_add(bgKaliBody, 0, 0, 64, 64, xpos-16, ypos-48, 10001);
//            instance_create(xpos+16, ypos-80+16, oKaliHead);
//        }
//        else if (tile == "a")
//        {
//            instance_create(xpos, ypos, oChest);
//        }
//        else if (tile == "I")
//        {
//            instance_create(xpos+16, ypos+12, oGoldIdol);
//        }
//        else if (tile == "B")
//        {
//            instance_create(xpos+16, ypos+12, oGiantTikiHead);
//            tile_add(bgTiki, 0, 0, 32, 64, xpos, ypos+32, 10001);
//            tile_add(bgTikiArms, 16*rand(0,2), 0, 16, 16, xpos+32, ypos+32, 10001)
//            tile_add(bgTikiArms, 16*rand(0,2), 16, 16, 16, xpos-16, ypos+32, 10001)
//        }
//        else if (tile == "Q")
//        {
//            if (shopType == "Craps")
//            {
//                tile_add(bgDiceSign, 0, 0, 48, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "q")
//        {
//            n = rand(1,6);
//            scrGenerateItem(xpos+8, ypos+8, 1);
//            obj.inDiceHouse = true;
//        }
//        else if (tile == "+")
//        {
//            obj = instance_create(xpos, ypos, oSolid);
//            obj.sprite_index = sIceBlock;
//            obj.shopWall = true;
//        }
//        else if (tile == "W")
//        {
//            if (global.murderer or global.thiefLevel > 0)
//            {
//                if (global.isDamsel) tile_add(bgWanted, 32, 0, 32, 32, xpos, ypos, 9004);
//                else if (global.isTunnelMan) tile_add(bgWanted, 64, 0, 32, 32, xpos, ypos, 9004);
//                else tile_add(bgWanted, 0, 0, 32, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "." and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,10) == 1) obj = instance_create(xpos, ypos, oBlock);
//            else
//            {
//                obj = instance_create(xpos, ypos, oBrick);
//            }
//            obj.shopWall = true;
//        }
//        else if (tile == "b")
//        {
//            obj = instance_create(xpos, ypos, oBrickSmooth);
//            obj.shopWall = true;
//        }
//        else if (tile == "l")
//        {
//            if (oGame.damsel) instance_create(xpos, ypos, oLampRed);
//            else instance_create(xpos, ypos, oLamp);
//        }
//        else if (tile == "K")
//        {
//            obj = instance_create(xpos, ypos, oShopkeeper);
//            obj.style = shopType;
//        }
//        else if (tile == "k")
//        {
//            obj = instance_create(xpos, ypos, oSign);
//            if (shopType == "General") obj.sprite_index = sSignGeneral;
//            else if (shopType == "Bomb") obj.sprite_index = sSignBomb;
//            else if (shopType == "Weapon") obj.sprite_index = sSignWeapon;
//            else if (shopType == "Clothing") obj.sprite_index = sSignClothing;
//            else if (shopType == "Rare") obj.sprite_index = sSignRare;
//            else if (shopType == "Craps") obj.sprite_index = sSignCraps;
//            else if (shopType == "Kissing") obj.sprite_index = sSignKissing;
//        }
//        else if (tile == "i")
//        {
//            scrShopItemsGen();
//        }
//        else if (tile == "d")
//        {
//            instance_create(xpos+8, ypos+8, oDice);
//        }
//        else if (tile == "D")
//        {
//            obj = instance_create(xpos+8, ypos+8, oDamsel);
//            obj.forSale = true;
//            obj.status = 5;
//        }
//        else if (tile == "s")
//        {
//            if (rand(1,10) == 1) instance_create(xpos, ypos, oSnake);
//            else if (rand(1,2) == 1) instance_create(xpos, ypos, oBrick);
//        }
//        else if (tile == "S")
//        {
//            instance_create(xpos, ypos, oSnake);
//        }
//        else if (tile == "T")
//        {
//            instance_create(xpos+8, ypos+8, oRubyBig);
//        }
//        else if (tile == "M")
//        {
//            instance_create(xpos, ypos, oBrick);
//            obj = instance_create(xpos+8, ypos+8, oMattock);
//            obj.cost = 0;
//            obj.forSale = false;
//        }
//    }
//}

//#define scrRoomGen2
////
//// scrRoomGen2()
////
//// Room generation for Area 2, the Lush Jungle.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

///*
//Note:

//ROOMS are 10x8 tile areas.

//strTemp = "0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000";

//OBSTACLES are 5x3 tile chunks that are randomized within rooms.
           
//strObs = "00000
//          00000
//          00000";
          
//The string representing a room or obstacle must be laid out unbroken:
//*/
//strTemp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000";

//roomPath = global.roomPath[scrGetRoomX(x), scrGetRoomY(y)];
//roomPathAbove = -1;
//if (scrGetRoomY(y) != 0) roomPathAbove = global.roomPath[scrGetRoomX(x), scrGetRoomY(y-128)];

//if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY) // start room
//{
//    if (roomPath == 2) n = rand(3,4);
//    else n = rand(1,2);
//    switch(n)
//    {
//        case 1: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"; break; }
//        // hole
//        case 3: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000002021111120"; break; }
//        case 4: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000002021111120"; break; }
//    }
//}
//else if (scrGetRoomX(x) == global.endRoomX and scrGetRoomY(y) == global.endRoomY) // end room
//{
//    if (global.lake) n = rand(5,5);
//    else if (roomPathAbove == 2) n = rand(1,2);
//    else n = rand(3,4);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "00000000000011111100000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 4: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 5: { strTemp = "000000000000000900000221111220wwvvvvvvwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"; break; }
//    }
//}
//else if (roomPath == 0 and rand(1,3) <= 2) // side room
//{
//    if (not oGame.altar and rand(1,12) == 1)
//    {
//        n = 10;
//        oGame.altar = true;
//    }
//    else if (oGame.idol)
//    {
//        n = rand(1,8);
//    }
//    else
//    {
//        n = rand(1,9);
//        if (n == 9) oGame.idol = true;
//    }

//    switch(n)
//    {
//        // upper plats
//        case 1: { strTemp = "00000000000010111100000000000000011010000050000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "111111111111V0000211120000021100000002110000000211112000021111120021111111001111"; break; }
//        case 3: { strTemp = "1111111111112V000011112000002111200000001120000000112000021111120021111111001111"; break; }
//        case 4: { strTemp = "11120021111100000222120000021100000002220000000211112000022211177T71111111111111"; break; }
//        case 5: { strTemp = "1112002111222000001111200000212220000000112000000022200002111117T771111111111111"; break; }
//        case 6: { strTemp = "1112002111222000001111200000212220000000112000000022200002111117T771111111111111"; break; }
//        // water rooms
//        case 7: { strTemp = "000000000011wwwwww1111wwwwww11113wwww311113wwww311113wwww31111133331111111111111"; break; }
//        case 8: { strTemp = "00000000000000rr0000000rttr00000rrrrrr0000V0000000000000000000000000000000000000"; break; }
//        // idols
//        case 9:
//        {
//            if (global.cemetary) strTemp = "ttttttttttttttttttttttp0C00pttttt0tt0ttt4000000004ttt0tt0tttttp0000ptt1111111111";
//            else strTemp = "01000000100000I0000001BBBBBB10110000001111wwwwww1111wwwwww11113wwww3111111111111";
//            break;
//        }
//        // altars
//        case 10: { strTemp = "220000002200000000000000000000000000000000000000000000x0000002211112201111111111"; break; }
//    }
//}
//else if (roomPath == 0 or roomPath == 1)
//{
//    switch(rand(1,10))
//    {
//        // basic rooms
//        case 1: { strTemp = "60000600000000000000000000000000000000000050000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "60000600000000000000000000000000000000005000050000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "60000600000000000000000000000050000500000000000000000000000011111111111111111111"; break; }
//        case 4: { strTemp = "60000600000000000000000000000000000000000000000000000111110000111111001111111111"; break; }
//        case 5: { strTemp = "2222222222000000000000000000000000tt000000r0220r0000t0tt0t000rtrttrtr01111111111"; break; }
//        case 6: {
//            if (rand(1,2) == 1) strTemp = "0L000000001L111111110L222222200L000000000002002000011122111011200002111111111111";
//            else strTemp = "00000000L011111111L102222222L000000000L00002002000011122111011200002111111111111";
//            break;
//        }
//        // spikes
//        case 7: { strTemp = "1111111111V0000V000000000000000000000000000000000010000000011ssssssss11111111111"; break; }
//        // upper plats
//        case 8: { strTemp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"; break; }
//        // water
//        case 9: { strTemp = "000000000000000000000000000000013wwww310013wwww310113wwww31111133331111111111111"; break; }
//        case 10: { strTemp = "0060000000000000000000000000000000000000013wwww310113wwww31111133331111111111111"; break; }
//    }
//}
//else if (roomPath == 3)
//{
//    switch(rand(1,7))
//    {
//        // basic rooms
//        case 1: { strTemp = "00000000000000000000000000000000000000000050000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "00000000000000000000000000000050000500000000000000000000000011111111111111111111"; break; }
        
//        // upper plats
//        case 4: { strTemp = "00000000000000000000000000000000000000000002222220001111111011111111111111111111"; break; }
//        case 5: { strTemp = "00000000000000000000000000000000000000000000000221000002211100002211111111111111"; break; }
//        // water
//        case 6: { strTemp = "000000000000000000000000000000013wwww310013wwww310113wwww31111133331111111111111"; break; }
//        case 7: { strTemp = "0000000000006000000000000000000000000000013wwww310113wwww31111133331111111111111"; break; }
//    }
//}
//else if (roomPath == 4) // shop
//{
//    strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..Kiiii000bbbbbbbbbb";
    
//    switch(rand(1,7))
//    {
//        case 1: { shopType = "General"; break; }
//        case 2: { shopType = "Bomb"; break; }
//        case 3: { shopType = "Weapon"; break; }
//        case 4: { shopType = "Rare"; break; }
//        case 5: { shopType = "Clothing"; break; }
//        case 6: { shopType = "Craps"; strTemp = "11111111111111111111111122111111Kl000211..bQ00W010.0+00000k0.q+uu00000bbbbbbbbbb"; break; }
//        case 7: { shopType = "Kissing"; strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..K00D0000bbbbbbbbbb"; oGame.damsel = true; break; }
//    }   
//}
//else if (roomPath == 5) // shop
//{
//    strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...000iiiiK..bbbbbbbbbb";
        
//    switch(rand(1,7))
//    {
//        case 1: { shopType = "General"; break; }
//        case 2: { shopType = "Bomb"; break; }
//        case 3: { shopType = "Weapon"; break; }
//        case 4: { shopType = "Rare"; break; }
//        case 5: { shopType = "Clothing"; break; }
//        case 6: { shopType = "Craps"; strTemp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000uu+q.bbbbbbbbbb"; break; }
//        case 7: { shopType = "Kissing"; strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...0000D00K..bbbbbbbbbb"; oGame.damsel = true; break; }
//    }
//}
//else if (roomPath == 7) // Lake Bottom
//{
//    switch(rand(1,8))
//    {
//        case 1: { strTemp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"; break; }
//        case 2: { strTemp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,,,,,,,,,,"; break; }
//        case 3: { strTemp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,,wwwwww,,wwwwwwwwwwwwwwwwwwww,,,,,,,,,,"; break; }
//        case 4: { strTemp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,v,wwwwwwwwwv,wwwwwww,v,wwwwww,,v,,,,,ww"; break; }
//        case 5: { strTemp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,v,wwwwww,vwwwwwwww,v,ww,,,,,,v,,"; break; }
//        case 6: { strTemp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,,wwwwwww,vv,wwwwww,vv,wwwww,,vv,,ww,,,vvvv,,,"; break; }
//        case 7: { strTemp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,,,,wwwww,vvvv,www,v,w,vv,ww,wwww,vv,,,,,,,,,,,"; break; }
//        case 8: { strTemp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,,,,wwwww,vvvv,www,vv,w,v,w,vv,wwww,w,,,,,,,,,,"; break; }
//    }
//}
//else if (roomPath == 8) // Lake Top
//{
//    if (global.roomPath[scrGetRoomX(x), scrGetRoomY(y-128)] == 2)
//        n = rand(1,5);
//    else
//        n = rand(1,8);
//    switch(n)
//    {
//        case 1: { strTemp = "000000000000000000000001111000w,,vvvv,,wwwww,,wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"; break; }
//        case 2: { strTemp = "000000000000000000001200000000vvwwwwwwww,wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"; break; }
//        case 3: { strTemp = "000000000000000000000000000021wwwwwwwwvvwwwwwwwww,wwwwwwwwwwwwwwwwwwwwwwwwwwwwww"; break; }
//        case 4: { strTemp = "000000000000000000000000000000wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"; break; }
//        case 5: { strTemp = "000000000000000000000001111000w,,vvvv,,wwww,vv,wwwwwwwvvwwwwwwww,,wwwwwwwwwwwwww"; break; }
//        case 6: { strTemp = "000022000000021120000001111000w,,vvvv,,wwww,vv,wwwwwwwvvwwwwwwww,,wwwwwwwwwwwwww"; break; }
//        case 7: { strTemp = "600006000000000000000000000000wwwvvvvwwwwwww,,wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"; break; }
//        case 8: { strTemp = "000022000000021120000221111220www,,,,wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"; break; }
//    }
//}
//else if (roomPath == 9) // Mega Mouth
//{
//    switch(rand(1,1))
//    {
//        case 1: { strTemp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwJwwwwwwwwwwwwwwwwwwwwwwwwww,,,,,,,,,,"; break; }
//    }
//}
//else // drop
//{
//    if (roomPathAbove != 2) n = rand(1,6);
//    else n = rand(1,5);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000000000000000000000000000000000000000000000000000002200000002111111202111"; break; }
//        case 2: { strTemp = "000000000000000000000000000000000000000000000000002200000000112T0000001111202111"; break; }
//        case 3: { strTemp = "00000000006000000000000000000000000000000000000000000000000000000000001000000001"; break; }
//        case 4: { strTemp = "00000000000000000000000000000000000000000000000000000000000020000222221000111111"; break; }
//        case 5: { strTemp = "00000000000000000000000000000000000000000000000000000000000022222000021111110001"; break; }
//        //
//        case 6: { strTemp = "11111111111111111111120000002100000000000000000000022000022021120021121111001111"; break; }
//    }
//}

//// Add obstacles

//for (i = 1; i < 81; i += 1)
//{
//    j = i;
  
//    strObs1 = "00000";
//    strObs2 = "00000";
//    strObs3 = "00000";
//    strObs4 = "00000";
//    tile = string_char_at(strTemp, i);
    
//    if (tile == "8")
//    {
//        n = rand(1,1);
//        switch(n)
//        {
//            case 1: { strObs1 = "00900"; strObs2 = "01110"; strObs3 = "11111"; break; }
//        }
//    }
//    else if (tile == "5") // ground
//    {
//        if (rand(1,8) == 1) n = rand(100,102);
//        else n = rand(1,2);
//        switch(n)
//        {
//            case 1: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "22222"; break; }
//            case 2: { strObs1 = "00000"; strObs2 = "22222"; strObs3 = "11111"; break; }
//            case 100: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "0T022"; break; }
//            case 101: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "20T02"; break; }
//            case 102: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "220T0"; break; }
//        }
//    }
//    else if (tile == "6") // air
//    {
//        n = rand(1,4);
//        switch(n)
//        {
//            case 1: { strObs1 = "11112"; strObs2 = "22220"; strObs3 = "00000"; break; }
//            case 2: { strObs1 = "21111"; strObs2 = "02222"; strObs3 = "00000"; break; }
//            case 3: { strObs1 = "22222"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 4: { strObs1 = "11111"; strObs2 = "21112"; strObs3 = "00000"; break; }
//        }
//    }
//    else if (tile == "V") // vines
//    {
//        n = rand(1,3);
//        switch(n)
//        {
//            case 1: { strObs1 = "L0L0L"; strObs2 = "L0L0L"; strObs3 = "L000L"; strObs4 = "L0000"; break; }
//            case 2: { strObs1 = "L0L0L"; strObs2 = "L0L0L"; strObs3 = "L000L"; strObs4 = "0000L"; break; }
//            case 3: { strObs1 = "0L0L0"; strObs2 = "0L0L0"; strObs3 = "0L0L0"; strObs4 = "000L0"; break; }
//        }
//    }
    
//    if (tile == "5" or tile == "6" or tile == "8" or tile == "V")
//    {
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs1, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs2, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs3, strTemp, j);
//    }
//    if (tile == "V")
//    {
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs4, strTemp, j);
//    }
//}

//// Generate the tiles
//for (j = 0; j < 8; j += 1)
//{
//    for (i = 1; i < 11; i += 1)
//    {
//        tile = string_char_at(strTemp, i+j*10);
//        xpos = x + (i-1)*16;
//        ypos = y + j*16;
//        if (tile == "1" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            instance_create(xpos, ypos, oLush);
//        }
//        else if (tile == "2" and rand(1,2) == 1 and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            instance_create(xpos, ypos, oLush);
//        }
//        if (tile == "t" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            instance_create(xpos, ypos, oTemple);
//        }
//        if (tile == "r" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,2) == 1) instance_create(xpos, ypos, oTemple);
//            else instance_create(xpos, ypos, oLush);
//        }
//        else if (tile == "3" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,2) == 1) instance_create(xpos, ypos, oWaterSwim);
//            else instance_create(xpos, ypos, oLush);
//        }
//        else if (tile == "L") instance_create(xpos, ypos, oVine);
//        else if (tile == "P") instance_create(xpos, ypos, oVineTop);
//        else if (tile == "7" and rand(1,3) == 1) instance_create(xpos, ypos, oSpikes);
//        else if (tile == "s") instance_create(xpos, ypos, oSpikes);
//        else if (tile == "4") instance_create(xpos, ypos, oPushBlock);
//        else if (tile == "9")
//        {
//            block = instance_create(xpos, ypos+16, oLush);
//            if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY)
//                instance_create(xpos, ypos, oEntrance);
//            else
//            {
//                instance_create(xpos, ypos, oExit);
//                global.exitX = xpos;
//                global.exitY = ypos;
//                block.invincible = true;
//            }
//        }
//        else if (tile == "c")
//        {
//            instance_create(xpos, ypos, oChest);
//        }
//        else if (tile == "d")
//        {
//            instance_create(xpos, ypos, oWaterSwim);
//            instance_create(xpos, ypos, oChest);
//        }
//        else if (tile == "w")
//        {
//            instance_create(xpos, ypos, oWaterSwim);
//        }
//        else if (tile == "v")
//        {
//            instance_create(xpos, ypos, oWaterSwim);
//            instance_create(xpos, ypos, oLush);
//        }
//        else if (tile == ",")
//        {
//            instance_create(xpos, ypos, oWaterSwim);
//            if (rand(1,2)==1) instance_create(xpos, ypos, oLush);
//        }
//        else if (tile == "J")
//        {
//            instance_create(xpos, ypos, oWaterSwim);
//            instance_create(xpos, ypos, oJaws);
//        }
//        else if (tile == "I")
//        {
//            instance_create(xpos+16, ypos+12, oGoldIdol);
//        }
//        else if (tile == "C")
//        {
//            instance_create(xpos+16, ypos+12, oCrystalSkull);
//        }
//        else if (tile == "." and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            obj = instance_create(xpos, ypos, oLush);
//            obj.shopWall = true;
//        }
//        else if (tile == "Q")
//        {
//            if (shopType == "Craps")
//            {
//                tile_add(bgDiceSign, 0, 0, 48, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "q")
//        {
//            n = rand(1,6);
//            scrGenerateItem(xpos+8, ypos+8, 1);
//            obj.inDiceHouse = true;
//        }
//        else if (tile == "+")
//        {
//            obj = instance_create(xpos, ypos, oSolid);
//            obj.sprite_index = sIceBlock;
//            obj.shopWall = true;
//        }
//        else if (tile == "W")
//        {
//            if (global.murderer or global.thiefLevel > 0)
//            {
//                if (global.isDamsel) tile_add(bgWanted, 32, 0, 32, 32, xpos, ypos, 9004);
//                else if (global.isTunnelMan) tile_add(bgWanted, 64, 0, 32, 32, xpos, ypos, 9004);
//                else tile_add(bgWanted, 0, 0, 32, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "b")
//        {
//            obj = instance_create(xpos, ypos, oBrickSmooth);
//            obj.sprite_index = sLushSmooth;
//            obj.shopWall = true;
//        }
//        else if (tile == "l")
//        {
//            if (oGame.damsel) instance_create(xpos, ypos, oLampRed);
//            else instance_create(xpos, ypos, oLamp);
//        }
//        else if (tile == "K")
//        {
//            obj = instance_create(xpos, ypos, oShopkeeper);
//            obj.style = shopType;
//        }
//        else if (tile == "k")
//        {
//            obj = instance_create(xpos, ypos, oSign);
//            if (shopType == "General") obj.sprite_index = sSignGeneral;
//            else if (shopType == "Bomb") obj.sprite_index = sSignBomb;
//            else if (shopType == "Weapon") obj.sprite_index = sSignWeapon;
//            else if (shopType == "Clothing") obj.sprite_index = sSignClothing;
//            else if (shopType == "Rare") obj.sprite_index = sSignRare;
//            else if (shopType == "Craps") obj.sprite_index = sSignCraps;
//            else if (shopType == "Kissing") obj.sprite_index = sSignKissing;
//        }
//        else if (tile == "i")
//        {
//            scrShopItemsGen();
//        }
//        else if (tile == "u")
//        {
//            instance_create(xpos+8, ypos+8, oDice);
//        }
//        else if (tile == "D")
//        {
//            obj = instance_create(xpos+8, ypos+8, oDamsel);
//            obj.forSale = true;
//            obj.status = 5;
//        }
//        else if (tile == "B")
//        {
//            obj = instance_create(xpos, ypos, oTrapBlock);
//            obj.deathTimer = 40-abs(obj.x-(oGoldIdol.x-8));
//            if (obj.deathTimer < 0) obj.deathTimer = 0;
//        }
//        else if (tile == "x")
//        {
//            instance_create(xpos, ypos, oSacAltarLeft);
//            instance_create(xpos+16, ypos, oSacAltarRight);
//            tile_add(bgKaliBody, 0, 0, 64, 64, xpos-16, ypos-48, 10001);
//            instance_create(xpos+16, ypos-80+16, oKaliHead);
//        }
//        else if (tile == "p")
//        {
//            if (rand(1,2)) instance_create(xpos, ypos, oFakeBones);
//            else instance_create(xpos+8, ypos+10, oJar);
//        }
//        else if (tile == "T")
//        {
//            instance_create(xpos, ypos, oTree);
//            n = 0;
//            tx = xpos;
//            ty = ypos-16;
//            b1 = false;
//            b2 = false;
//            for (m = 0; m < 5; m += 1)
//            {
//                if (rand(0,m) > 2)
//                {
//                    break;
//                }
//                else
//                {
//                    if (not collision_point(tx, ty-16, oSolid, 0, 0) and
//                        not collision_point(tx-16, ty-16, oSolid, 0, 0) and
//                        not collision_point(tx+16, ty-16, oSolid, 0, 0))                    
//                    {
//                        instance_create(tx, ty, oTree);
//                        if (m < 4)
//                        {
//                            if (rand(1,5) < 4 and not b1)
//                            {
//                                instance_create(tx+16, ty, oTreeBranch);
//                                b1 = true;
//                            }
//                            else if (b1) b1 = false;
//                            if (rand(1,5) < 4 and not b2)
//                            {
//                                instance_create(tx-16, ty, oTreeBranch);
//                                b2 = true;
//                            }
//                            else if (b2) b2 = false;
//                        }
//                    }
//                    else
//                    {
//                        break;
//                    }
//                }
//                ty -= 16;
//            }
//            instance_create(tx-16, ty+16, oLeaves);
//            instance_create(tx+16, ty+16, oLeaves);
//        }
//    }
//}

//#define scrRoomGenMarket
////
//// scrRoomGenMarket()
////
//// Room generation for the Black Market, which is accessible from Area 2: Lush.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

///*
//Note:

//ROOMS are 10x8 tile areas.

//strTemp = "0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000";

//OBSTACLES are 5x3 tile chunks that are randomized within rooms.
           
//strObs = "00000
//          00000
//          00000";
          
//The string representing a room or obstacle must be laid out unbroken:
//*/
//strTemp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000";

//roomPath = global.roomPath[scrGetRoomX(x), scrGetRoomY(y)];
//roomPathAbove = -1;
//if (scrGetRoomY(y) != 0) roomPathAbove = global.roomPath[scrGetRoomX(x), scrGetRoomY(y-128)];

//if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY) // start room
//{
//    if (roomPath == 2) n = rand(3,4);
//    else n = rand(1,2);
//    switch(n)
//    {
//        case 1: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"; break; }
//        // hole
//        case 3: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000002021111120"; break; }
//        case 4: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000002021111120"; break; }
//    }
//}
//else if (scrGetRoomX(x) == global.endRoomX and scrGetRoomY(y) == global.endRoomY) // end room
//{
//    if (roomPathAbove == 2) n = rand(1,2);
//    else n = rand(3,4);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "00000000006000060000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 4: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"; break; }
//    }
//}
//else if (roomPath == 1)
//{
//    switch(rand(1,8))
//    {
//        // basic rooms
//        case 1: { strTemp = "60000600000000000000000000000000000000000050000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "60000600000000000000000000000000000000005000050000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "60000600000000000000000000000050000500000000000000000000000011111111111111111111"; break; }
//        case 4: { strTemp = "60000600000000000000000000000000000000000000000000000111110000111111001111111111"; break; }
//        // spikes
//        case 5: { strTemp = "1111111111V0000V000000000000000000000000000000000010000000011ssssssss11111111111"; break; }
//        // upper plats
//        case 6: { strTemp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"; break; }
//        // water
//        case 7: { strTemp = "000000000000000000000000000000013wwww310013wwww310113wwww31111133331111111111111"; break; }
//        case 8: { strTemp = "0060000000000000000000000000000000000000013wwww310113wwww31111133331111111111111"; break; }
//    }
//}
//else if (roomPath == 3)
//{
//    switch(rand(1,7))
//    {
//        // basic rooms
//        case 1: { strTemp = "00000000000000000000000000000000000000000050000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "00000000000000000000000000000050000500000000000000000000000011111111111111111111"; break; }
        
//        // upper plats
//        case 4: { strTemp = "00000000000000000000000000000000000000000002222220001111111011111111111111111111"; break; }
//        case 5: { strTemp = "00000000000000000000000000000000000000000000000221000002211100002211111111111111"; break; }
//        // water
//        case 6: { strTemp = "000000000000000000000000000000013wwww310013wwww310113wwww31111133331111111111111"; break; }
//        case 7: { strTemp = "0000000000006000000000000000000000000000013wwww310113wwww31111133331111111111111"; break; }
//    }
//}
//else if (roomPath == 4 and x == 496) // shop
//{
//    strTemp = "0000000011.....b0AlK......bbbb..........1111111111111111111111111111111111111111";
//    shopType = "Ankh";
//}
//else if (roomPath == 4) // shop
//{
//    strTemp = "........................22......2l00l2..0.000000.00k000000k0000iiiiK00bbbbbbbbbb";
    
//    shopType = "";
    
//    n = rand(1,5);
//    m = n;
    
//    while (shopType == "")
//    {
//        if (n == 1) { if (not oGame.genSupplyShop) { shopType = "General"; oGame.genSupplyShop = true; } }
//        else if (n == 2) { if (not oGame.genBombShop) { shopType = "Bomb"; oGame.genBombShop = true; } }
//        else if (n == 3) { if (not oGame.genWeaponShop) { shopType = "Weapon"; oGame.genWeaponShop = true; } }
//        else if (n == 4) { if (not oGame.genRareShop) { shopType = "Rare"; oGame.genRareShop = true; } }
//        else if (n == 5) { if (not oGame.genClothingShop) { shopType = "Clothing"; oGame.genClothingShop = true; } }
//        n += 1;
//        if (n > 5) n = 1;
//        if (n == m)
//        {
//            shopType = "General";
//            break;
//        }
//    }
//}
//else if (roomPath == 5) // casino
//{
//    strTemp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000zz+q.bbbbbbbbbb";
//    shopType = "Craps";
//}
//else // drop
//{
//    if (roomPathAbove != 2) n = rand(1,6);
//    else n = rand(1,5);
//    switch(n)
//    {
//        case 1: { strTemp = "00G000000000H111100000G222200000G000000000G000000000G000002200000002111111202111"; break; }
//        case 2: { strTemp = "0000000G000001111H000002222G000000000G000000000G002200000G00112T0000001111202111"; break; }
//        case 3: { strTemp = "00000000G060000011H000000000G000000000G0G0000000G0H1122000G0G0000000G011100001H1"; break; }
//        case 4: { strTemp = "0000000G000001111H000002222G000000000G000000000G00000000000020000222221000111111"; break; }
//        case 5: { strTemp = "00G000000000H111100000G222200000G000000000G0000000000000000022222000021111110001"; break; }
//        //
//        case 6: { strTemp = "11111111111111111111120000002120000000020000000000022000022021120021121111001111"; break; }
//    }
//}

//// Add obstacles

//for (i = 1; i < 81; i += 1)
//{
//    j = i;
  
//    strObs1 = "00000";
//    strObs2 = "00000";
//    strObs3 = "00000";
//    strObs4 = "00000";
//    tile = string_char_at(strTemp, i);
    
//    if (tile == "8")
//    {
//        n = rand(1,1);
//        switch(n)
//        {
//            case 1: { strObs1 = "00900"; strObs2 = "01110"; strObs3 = "11111"; break; }
//        }
//    }
//    else if (tile == "5") // ground
//    {
//        if (rand(1,8) == 1) n = rand(100,102);
//        else n = rand(1,2);
//        switch(n)
//        {
//            case 1: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "22222"; break; }
//            case 2: { strObs1 = "00000"; strObs2 = "22222"; strObs3 = "11111"; break; }
//            case 100: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "0T022"; break; }
//            case 101: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "20T02"; break; }
//            case 102: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "220T0"; break; }
//        }
//    }
//    else if (tile == "6") // air
//    {
//        n = rand(1,4);
//        switch(n)
//        {
//            case 1: { strObs1 = "11112"; strObs2 = "22220"; strObs3 = "00000"; break; }
//            case 2: { strObs1 = "21111"; strObs2 = "02222"; strObs3 = "00000"; break; }
//            case 3: { strObs1 = "22222"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 4: { strObs1 = "11111"; strObs2 = "21112"; strObs3 = "02120"; break; }
//        }
//    }
//    else if (tile == "V") // vines
//    {
//        n = rand(1,3);
//        switch(n)
//        {
//            case 1: { strObs1 = "L0L0L"; strObs2 = "L0L0L"; strObs3 = "L000L"; strObs4 = "L0000"; break; }
//            case 2: { strObs1 = "L0L0L"; strObs2 = "L0L0L"; strObs3 = "L000L"; strObs4 = "0000L"; break; }
//            case 3: { strObs1 = "0L0L0"; strObs2 = "0L0L0"; strObs3 = "0L0L0"; strObs4 = "000L0"; break; }
//        }
//    }
    
//    if (tile == "5" or tile == "6" or tile == "8" or tile == "V")
//    {
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs1, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs2, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs3, strTemp, j);
//    }
//    if (tile == "V")
//    {
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs4, strTemp, j);
//    }
//}

//// Generate the tiles
//for (j = 0; j < 8; j += 1)
//{
//    for (i = 1; i < 11; i += 1)
//    {
//        tile = string_char_at(strTemp, i+j*10);
//        xpos = x + (i-1)*16;
//        ypos = y + j*16;
//        if (tile == "1" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            instance_create(xpos, ypos, oLush);
//        }
//        else if (tile == "2" and rand(1,2) == 1 and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            instance_create(xpos, ypos, oLush);
//        }
//        if (tile == "t" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            instance_create(xpos, ypos, oTemple);
//        }
//        else if (tile == "3" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,2) == 1) instance_create(xpos, ypos, oWaterSwim);
//            else instance_create(xpos, ypos, oLush);
//        }
//        else if (tile == "L") instance_create(xpos, ypos, oVine);
//        else if (tile == "P") instance_create(xpos, ypos, oVineTop);
//        else if (tile == "G") instance_create(xpos, ypos, oLadderOrange);
//        else if (tile == "H") instance_create(xpos, ypos, oLadderTop);
//        else if (tile == "7" and rand(1,3) == 1) instance_create(xpos, ypos, oSpikes);
//        else if (tile == "s") instance_create(xpos, ypos, oSpikes);
//        else if (tile == "4") instance_create(xpos, ypos, oPushBlock);
//        else if (tile == "9")
//        {
//            block = instance_create(xpos, ypos+16, oLush);
//            if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY)
//                instance_create(xpos, ypos, oEntrance);
//            else
//            {
//                instance_create(xpos, ypos, oExit);
//                global.exitX = xpos;
//                global.exitY = ypos;
//                block.invincible = true;
//            }
//        }
//        else if (tile == "c")
//        {
//            instance_create(xpos, ypos, oChest);
//        }
//        else if (tile == "d")
//        {
//            instance_create(xpos, ypos, oWaterSwim);
//            instance_create(xpos, ypos, oChest);
//        }
//        else if (tile == "w")
//        {
//            instance_create(xpos, ypos, oWaterSwim);
//        }
//        else if (tile == "I")
//        {
//            instance_create(xpos+16, ypos+8, oGoldIdol);
//        }
//        else if (tile == "." and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            obj = instance_create(xpos, ypos, oLush);
//            obj.shopWall = true;
//        }
//        else if (tile == "+")
//        {
//            obj = instance_create(xpos, ypos, oSolid);
//            obj.sprite_index = sIceBlock;
//            obj.shopWall = true;
//        }
//        else if (tile == "q")
//        {
//            n = rand(1,6);
//            scrGenerateItem(xpos+8, ypos+8, 1);
//            obj.inDiceHouse = true;
//        }
//        else if (tile == "Q")
//        {
//            if (shopType == "Craps")
//            {
//                tile_add(bgDiceSign, 0, 0, 48, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "W")
//        {
//            if (global.murderer or global.thiefLevel > 0)
//            {
//                if (global.isDamsel) tile_add(bgWanted, 32, 0, 32, 32, xpos, ypos, 9004);
//                else if (global.isTunnelMan) tile_add(bgWanted, 64, 0, 32, 32, xpos, ypos, 9004);
//                else tile_add(bgWanted, 0, 0, 32, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "b")
//        {
//            obj = instance_create(xpos, ypos, oBrickSmooth);
//            obj.sprite_index = sLushSmooth;
//            obj.shopWall = true;
//        }
//        else if (tile == "l")
//        {
//            obj = instance_create(xpos, ypos, oLamp);
//        }
//        else if (tile == "K")
//        {
//            obj = instance_create(xpos, ypos, oShopkeeper);
//            obj.style = shopType;
//        }
//        else if (tile == "k")
//        {
//            obj = instance_create(xpos, ypos, oSign);
//            if (shopType == "General") obj.sprite_index = sSignGeneral;
//            else if (shopType == "Bomb") obj.sprite_index = sSignBomb;
//            else if (shopType == "Weapon") obj.sprite_index = sSignWeapon;
//            else if (shopType == "Clothing") obj.sprite_index = sSignClothing;
//            else if (shopType == "Rare") obj.sprite_index = sSignRare;
//            else if (shopType == "Craps") obj.sprite_index = sSignCraps;
//        }
//        else if (tile == "i")
//        {
//            scrShopItemsGen();
//        }
//        else if (tile == "A")
//        {
//            obj = instance_create(xpos+8, ypos+8, oAnkh);
//        }
//        else if (tile == "z")
//        {
//            instance_create(xpos+8, ypos+8, oDice);
//        }
//        else if (tile == "B")
//        {
//            instance_create(xpos, ypos, oTrapBlock);
//        }
//        else if (tile == "p")
//        {
//            if (rand(1,2)) instance_create(xpos, ypos, oFakeBones);
//            else instance_create(xpos+8, ypos+10, oJar);
//        }
//        else if (tile == "T")
//        {
//            instance_create(xpos, ypos, oTree);
//            n = 0;
//            tx = xpos;
//            ty = ypos-16;
//            b1 = false;
//            b2 = false;
//            for (m = 0; m < 5; m += 1)
//            {
//                if (rand(0,m) > 2)
//                {
//                    break;
//                }
//                else
//                {
//                    if (not collision_point(tx, ty-16, oSolid, 0, 0) and
//                        not collision_point(tx-16, ty-16, oSolid, 0, 0) and
//                        not collision_point(tx+16, ty-16, oSolid, 0, 0))                    
//                    {
//                        instance_create(tx, ty, oTree);
//                        if (m < 4)
//                        {
//                            if (rand(1,5) < 4 and not b1)
//                            {
//                                instance_create(tx+16, ty, oTreeBranch);
//                                b1 = true;
//                            }
//                            else if (b1) b1 = false;
//                            if (rand(1,5) < 4 and not b2)
//                            {
//                                instance_create(tx-16, ty, oTreeBranch);
//                                b2 = true;
//                            }
//                            else if (b2) b2 = false;
//                        }
//                    }
//                    else
//                    {
//                        break;
//                    }
//                }
//                ty -= 16;
//            }
//            instance_create(tx-16, ty+16, oLeaves);
//            instance_create(tx+16, ty+16, oLeaves);
//        }
//    }
//}

//#define scrRoomGen3
////
//// scrRoomGen3()
////
//// Room generation for Area 3, the Ice Caves.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

///*
//Note:

//ROOMS are 10x8 tile areas.

//strTemp = "0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000";

//OBSTACLES are 5x3 tile chunks that are randomized within rooms.
           
//strObs = "00000
//          00000
//          00000";
          
//The string representing a room or obstacle must be laid out unbroken:
//*/
//strTemp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000";

//roomPath = global.roomPath[scrGetRoomX(x), scrGetRoomY(y)];
//if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY) // start room
//{
//    if (roomPath == 2) n = rand(2,2);
//    else n = rand(1,1);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        // hole
//        case 2: { strTemp = "00000000000000000000000000000000000000000008000000000000000000000000000011111110"; break; }
//    }
//}
//else if (scrGetRoomX(x) == global.endRoomX and scrGetRoomY(y) == global.endRoomY) // end room
//{
//    n = rand(1,1);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//    }
//}
//else if (roomPath == 0 and rand(1,2) == 1) // side room
//{
//    if (not oGame.altar and rand(1,12) == 1)
//    {
//        n = 10;
//        oGame.altar = true;
//    }
//    else if (oGame.idol)
//    {
//        n = rand(1,8);
//    }
//    else
//    {
//        n = rand(1,9);
//        if (n == 9) oGame.idol = true;
//    }

//    switch(n)
//    {
//        // empty
//        case 1: { strTemp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"; break; }
//        // steps
//        case 2: { strTemp = "10000000001000000000111000000022201100000000220100000000010000000001110000000222"; break; }
//        case 3: { strTemp = "00000000010000000001000000011100001102220010220000001000000011100000002220000000"; break; }
//        // treasure tower
//        case 4: { strTemp = "000000000000021120000001111000000111100000f1111f000002222000f00000000f0000000000"; break; }
//        case 5: { strTemp = "0000000000000000000000220022000011ff11000011001200202100120220210012020002002000"; break; }
//        case 6: { strTemp = "0jiiiiiij00jij00jij0jjii0jiij0000000jij0jjiij0iij00jiij0jijj0jiij000000jjiiiiijj"; break; }
//        case 7: { strTemp = "0jiiiiiij00jij00jij00jii0jiijj0jij0000000jij0jiijj0jij0jiij000000jiij00jjiiiiijj"; break; }
//        case 8: { strTemp = "011iiii110000jjjj0000000ii00000000jj00000000ii00000000jj00000000ii00000002222000"; break; }
//        // idol
//        case 9: { strTemp = "00000000000000I000000000cc000000000000000000000000000000000000007700000000110000"; break; }
//        // altars
//        case 10: { strTemp = "000000000000000000000000000000000000000000000000000000x0000002211112201111111111"; break; }
//    }
//}
//else if ((roomPath == 0 or roomPath == 1 or roomPath == 2) and (rand(1,10) < 10))
//{
//    switch(rand(1,9))
//    {
//        // basic rooms
//        case 1: { strTemp = "00000000000000000000000000000000006000000000000000000000000000021111120000222220"; break; }
//        case 2: { strTemp = "00000000000000000000000000000060000000000000000000000000000021111120000222220000"; break; }
//        case 3: { strTemp = "11111200001111112000111111200000002120001120000000112021200000001120001111120000"; break; }
//        case 4: { strTemp = "00002111110002111111000211111100021200000000000211000212021100021100000000211111"; break; }
//        case 5: { strTemp = "000000000000000000jj00f2100iii00021000000002111iii000021111100000222220000000000"; break; }
//        // falling platforms
//        case 6: { strTemp = "00000000000000000000000000000000000000000000000000F00F00F00000000000000000000000"; break; }
//        // icy
//        case 7: { strTemp = "00000000000000000000000000000000000000000iiiiiiii00021ii120000022220000000000000"; break; }
//        case 8: { strTemp = "000000000000000000000iiiiiiii00021ii12000002222000000000000000000000000000000000"; break; }
//        case 9: { strTemp = "0011111100000222200000000000000000000000jjjjjjjjjjiiiiiiiiii00000000001111111111"; break; }
//    }
//}
//else if (roomPath == 4) // shop
//{
//    strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..K$$$$000::::::::::";
    
//    switch(rand(1,7))
//    {
//        case 1: { shopType = "General"; break; }
//        case 2: { shopType = "Bomb"; break; }
//        case 3: { shopType = "Weapon"; break; }
//        case 4: { shopType = "Rare"; break; }
//        case 5: { shopType = "Clothing"; break; }
//        case 6: { shopType = "Craps"; strTemp = "11111111111111111111111122111111Kl000211..:Q00W010.0+00000k0.q+uu00000::::::::::"; break; }
//        case 7: { shopType = "Kissing"; strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..K00!0000::::::::::"; oGame.damsel = true; break; }
//    }   
//}

//else if (roomPath == 5) // shop
//{
//    strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...000$$$$K..::::::::::";
    
//    switch(rand(1,7))
//    {
//        case 1: { shopType = "General"; break; }
//        case 2: { shopType = "Bomb"; break; }
//        case 3: { shopType = "Weapon"; break; }
//        case 4: { shopType = "Rare"; break; }
//        case 5: { shopType = "Clothing"; break; }
//        case 6: { shopType = "Craps"; strTemp = "111111111111111111111111221111112000lK1101W0Q00:..0k00000+0.00000uu+q.::::::::::"; break; }
//        case 7: { shopType = "Kissing"; strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...0000!00K..::::::::::"; oGame.damsel = true; break; }
//    }
//}
//else if (roomPath == 6) // Moai
//{
//    switch(rand(1,2))
//    {
//        case 1: { strTemp = "000000000000000M000000000000000000000000021110002002111mmm2000111111000000000000"; break; }
//        case 2: { strTemp = "000000000000M000000000000000000000000000020001112002mmm1112000111111000000000000"; break; }
//    }
//}
//else if (roomPath == 7)
//{
//    switch(rand(1,1))
//    {
//        case 1: { strTemp = "0000000000000DAAAAAA0iiiE0E0E00iG00000000C00000000000000000000BBBBBBBB0000000000"; break; }
//    }
//}
//else if (roomPath == 8)
//{
//    switch(rand(1,1))
//    {
//        case 1: { strTemp = "0000000000AAAAAAAAAAE0E0E0E0E0000000000000000000000000000000BBBBBBBBBB0000000000"; break; }
//    }
//}
//else if (roomPath == 9)
//{
//    switch(rand(1,1))
//    {
//        case 1: { strTemp = "0000022221AAAAAAAAA1E0E0Et2211000000X01100000000T1000022ii11BBBbbbbbbb0000222221"; break; }
//    }
//}
//else
//{
//    switch(rand(1,1))
//    {
//        case 1: { strTemp = "00000000000000000000000000000000005000000000000000000000000000021111120000222220"; break; }
//    }
//}

//// Add obstacles

//for (i = 1; i < 81; i += 1)
//{
//    j = i;
  
//    strObs1 = "00000";
//    strObs2 = "00000";
//    strObs3 = "00000";
//    tile = string_char_at(strTemp, i);
    
//    if (tile == "8")
//    {
//        switch(rand(1,6))
//        {
//            case 1: { strObs1 = "00900"; strObs2 = "01110"; strObs3 = "11111"; break; }
//            case 2: { strObs1 = "00900"; strObs2 = "02120"; strObs3 = "02120"; break; }
//            case 3: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "92222"; break; }
//            case 4: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "22229"; break; }
//            case 5: { strObs1 = "00000"; strObs2 = "11001"; strObs3 = "19001"; break; }
//            case 6: { strObs1 = "00000"; strObs2 = "10011"; strObs3 = "10091"; break; }
//        }
//    }
//    else if (tile == "5") // ground
//    {
//        switch(rand(1,15))
//        {
//            case 1: { strObs1 = "11111"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 2: { strObs1 = "00000"; strObs2 = "11111"; strObs3 = "00000"; break; }
//            case 3: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "11111"; break; }
//            case 4: { strObs1 = "00000"; strObs2 = "20200"; strObs3 = "10100"; break; }
//            case 5: { strObs1 = "00000"; strObs2 = "02020"; strObs3 = "01010"; break; }
//            case 6: { strObs1 = "00000"; strObs2 = "00202"; strObs3 = "00101"; break; }
//            case 7: { strObs1 = "00000"; strObs2 = "22200"; strObs3 = "11100"; break; }
//            case 8: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "01110"; break; }
//            case 9: { strObs1 = "00000"; strObs2 = "00222"; strObs3 = "00111"; break; }
//            case 10: { strObs1 = "11100"; strObs2 = "22200"; strObs3 = "00000"; break; }
//            case 11: { strObs1 = "01110"; strObs2 = "02220"; strObs3 = "00000"; break; }
//            case 12: { strObs1 = "00111"; strObs2 = "00222"; strObs3 = "00000"; break; }
//            case 13: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "21112"; break; }
//            case 14: { strObs1 = "00000"; strObs2 = "20100"; strObs3 = "00110"; break; }
//            case 15: { strObs1 = "00000"; strObs2 = "00102"; strObs3 = "01100"; break; }
//        }
//    }
//    else if (tile == "6") // air
//    {
//        switch(rand(1,4))
//        {
//            case 1: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "11111"; break; }
//            case 2: { strObs1 = "00000"; strObs2 = "11111"; strObs3 = "22222"; break; }
//            case 3: { strObs1 = "11111"; strObs2 = "22222"; strObs3 = "00000"; break; }
//            case 4: { strObs1 = "0jij0"; strObs2 = "0jij0"; strObs3 = "0jij0"; break; }
//        }
//    }
//    else if (tile == "F") // falling/icy plats
//    {
//        switch(rand(1,12))
//        {
//            case 1: { strObs1 = "0ff"; strObs2 = "000"; strObs3 = "000"; break; }
//            case 2: { strObs1 = "000"; strObs2 = "0ff"; strObs3 = "000"; break; }
//            case 3: { strObs1 = "000"; strObs2 = "000"; strObs3 = "0ff"; break; }
//            case 4: { strObs1 = "00f"; strObs2 = "000"; strObs3 = "000"; break; }
//            case 5: { strObs1 = "000"; strObs2 = "0f0"; strObs3 = "000"; break; }
//            case 6: { strObs1 = "000"; strObs2 = "000"; strObs3 = "0f0"; break; }
//            case 7: { strObs1 = "0ji"; strObs2 = "000"; strObs3 = "000"; break; }
//            case 8: { strObs1 = "000"; strObs2 = "0ji"; strObs3 = "000"; break; }
//            case 9: { strObs1 = "000"; strObs2 = "000"; strObs3 = "0ji"; break; }
//            case 10: { strObs1 = "00i"; strObs2 = "000"; strObs3 = "000"; break; }
//            case 11: { strObs1 = "000"; strObs2 = "0i0"; strObs3 = "000"; break; }
//            case 12: { strObs1 = "000"; strObs2 = "000"; strObs3 = "0i0"; break; }
//        }
//    }
    
//    if (tile == "5" or tile == "6" or tile == "8")
//    {
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs1, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs2, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs3, strTemp, j);
//    }
//    else if (tile == "F")
//    {
//        strTemp = string_delete(strTemp, j, 3);
//        strTemp = string_insert(strObs1, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 3);
//        strTemp = string_insert(strObs2, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 3);
//        strTemp = string_insert(strObs3, strTemp, j);
//    }
//}

//// Generate the tiles
//for (j = 0; j < 8; j += 1)
//{
//    for (i = 1; i < 11; i += 1)
//    {
//        tile = string_char_at(strTemp, i+j*10);
//        xpos = x + (i-1)*16;
//        ypos = y + j*16;
//        if (tile == "1" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,10) == 1) instance_create(xpos, ypos, oIce);
//            else instance_create(xpos, ypos, oDark);
//        }
//        else if (tile == "2" and rand(1,2) == 1 and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,10) == 1) instance_create(xpos, ypos, oIce);
//            else instance_create(xpos, ypos, oDark);
//        }
//        else if (tile == "L") instance_create(xpos, ypos, oVine);
//        else if (tile == "P") instance_create(xpos, ypos, oVine);
//        else if (tile == "7") instance_create(xpos, ypos, oSpikes);
//        else if (tile == "4" and rand(1,4) == 1) instance_create(xpos, ypos, oPushBlock);
//        else if (tile == "9")
//        {
//            block = instance_create(xpos, ypos+16, oDark);
//            if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY)
//                instance_create(xpos, ypos, oEntrance);
//            else
//            {
//                instance_create(xpos, ypos, oExit);
//                global.exitX = xpos;
//                global.exitY = ypos;
//                block.invincible = true;
//            }
//        }
//        else if (tile == "a")
//        {
//            if (rand(1,1) == 1) instance_create(xpos, ypos, oChest);
//        }
//        else if (tile == "I")
//        {
//            instance_create(xpos+16, ypos+12, oGoldIdol);
//        }
//        else if (tile == "." and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            obj = instance_create(xpos, ypos, oDark);
//            obj.shopWall = true;
//        }
//        else if (tile == "Q")
//        {
//            if (shopType == "Craps")
//            {
//                tile_add(bgDiceSign, 0, 0, 48, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "q")
//        {
//            n = rand(1,6);
//            scrGenerateItem(xpos+8, ypos+8, 1);
//            obj.inDiceHouse = true;
//        }
//        else if (tile == "+")
//        {
//            obj = instance_create(xpos, ypos, oSolid);
//            obj.sprite_index = sIceBlock;
//            obj.shopWall = true;
//        }
//        else if (tile == "W")
//        {
//            if (global.murderer or global.thiefLevel > 0)
//            {
//                if (global.isDamsel) tile_add(bgWanted, 32, 0, 32, 32, xpos, ypos, 9004);
//                else if (global.isTunnelMan) tile_add(bgWanted, 64, 0, 32, 32, xpos, ypos, 9004);
//                else tile_add(bgWanted, 0, 0, 32, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == ":")
//        {
//            obj = instance_create(xpos, ypos, oBrickSmooth);
//            obj.sprite_index = sDarkSmooth;
//            obj.shopWall = true;
//        }
//        else if (tile == "l")
//        {
//            if (oGame.damsel) instance_create(xpos, ypos, oLampRed);
//            else instance_create(xpos, ypos, oLamp);
//        }
//        else if (tile == "K")
//        {
//            obj = instance_create(xpos, ypos, oShopkeeper);
//            obj.style = shopType;
//        }
//        else if (tile == "k")
//        {
//            obj = instance_create(xpos, ypos, oSign);
//            if (shopType == "General") obj.sprite_index = sSignGeneral;
//            else if (shopType == "Bomb") obj.sprite_index = sSignBomb;
//            else if (shopType == "Weapon") obj.sprite_index = sSignWeapon;
//            else if (shopType == "Clothing") obj.sprite_index = sSignClothing;
//            else if (shopType == "Rare") obj.sprite_index = sSignRare;
//            else if (shopType == "Craps") obj.sprite_index = sSignCraps;
//            else if (shopType == "Kissing") obj.sprite_index = sSignKissing;
//        }
//        else if (tile == "$")
//        {
//            scrShopItemsGen();
//        }
//        else if (tile == "u")
//        {
//            instance_create(xpos+8, ypos+8, oDice);
//        }
//        else if (tile == "!")
//        {
//            obj = instance_create(xpos+8, ypos+8, oDamsel);
//            obj.forSale = true;
//            obj.status = 5;
//        }
//        else if (tile == "Y")
//        {
//            instance_create(xpos, ypos, oYeti);
//        }
//        else if (tile == "A")
//        {
//            instance_create(xpos, ypos, oAlienShip);
//            tile_add(bgAlienShip3, 0, 0, 16, 16, xpos, ypos, 9005);
//        }
//        else if (tile == "B")
//        {
//            tile = instance_create(xpos, ypos, oAlienShip);
//            with tile { sprite_index = sAlienFloor; }
//            tile_add(bgAlienShip3, 0, 0, 16, 16, xpos, ypos, 9005);
//        }
//        else if (tile == "b")
//        {
//            if (rand(1,2) == 1)
//            {
//                if (rand(1,10) == 1) instance_create(xpos, ypos, oIce);
//                else instance_create(xpos, ypos, oDark);
//            }
//            else
//            {
//                tile = instance_create(xpos, ypos, oAlienShip);
//                with tile { sprite_index = sAlienFloor; }
//                tile_add(bgAlienShip3, 0, 0, 16, 16, xpos, ypos, 9005);
//            }
//        }
//        else if (tile == "C")
//        {
//            tile = instance_create(xpos, ypos, oAlienShip);
//            with tile { sprite_index = sAlienFront; }
//            tile = instance_create(xpos, ypos+16, oAlienShip);
//            with tile { sprite_index = sAlienFront; }
//            tile = instance_create(xpos, ypos+32, oAlienShip);
//            with tile { sprite_index = sAlienFront2; }
//            tile_add(bgAlienShip3, 0, 0, 16, 16, xpos, ypos, 9005);
//            tile_add(bgAlienShip3, 0, 0, 16, 16, xpos, ypos+16, 160);
//            tile_add(bgAlienShip3, 0, 0, 16, 16, xpos, ypos+32, 160);
//        }
//        else if (tile == "D")
//        {
//            tile = instance_create(xpos, ypos, oAlienShip);
//            with tile { sprite_index = sAlienFront3; }
//            tile_add(bgAlienShip3, 0, 0, 16, 16, xpos, ypos, 9005);
//        }
//        else if (tile == "E")
//        {
//            if (rand(1,3) == 1) tile_add(bgAlienShip, 32, 0, 32, 64, xpos, ypos, 9005);
//            else tile_add(bgAlienShip, 0, 0, 32, 64, xpos, ypos, 9005);
//        }
//        else if (tile == "G")
//        {
            
//            tile_add(bgAlienShip2, 0, 0, 32, 48, xpos, ypos, 9005);
//        }
//        else if (tile == "X")
//        {
//            instance_create(xpos, ypos, oAlienBoss);
//        }
//        else if (tile == "x")
//        {
//            instance_create(xpos, ypos, oSacAltarLeft);
//            instance_create(xpos+16, ypos, oSacAltarRight);
//            tile_add(bgKaliBody, 0, 0, 64, 64, xpos-16, ypos-48, 10001);
//            instance_create(xpos+16, ypos-80+16, oKaliHead);
//        }
//        else if (tile == "T")
//        {
//            instance_create(xpos, ypos, oDark);
//            obj = instance_create(xpos+8, ypos+8, oJetpack);
//            obj.cost = 0;
//            obj.forSale = false;
//        }
//        else if (tile == "t")
//        {
//            instance_create(xpos, ypos, oBarrierEmitter);
//        }
//        else if (tile == "c")
//        {
//            instance_create(xpos, ypos, oThinIce);
//        }
//        else if (tile == "M" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            instance_create(xpos, ypos, oMoai);
//            instance_create(xpos+16, ypos, oMoai2);
//            instance_create(xpos+32, ypos, oMoai3);
//            instance_create(xpos+16, ypos+16, oMoaiInside);
//            tile_add(bgAlienShip3, 0, 0, 16, 16, xpos+16, ypos+16, 150);
//            tile_add(bgAlienShip3, 0, 0, 16, 16, xpos+16, ypos+32, 150);
//            instance_create(xpos+16, ypos+32, oThinIce);
//            obj = instance_create(xpos+16, ypos+48, oExit);
//            obj.type = "Moai Exit";
//            obj = instance_create(xpos+16+8, ypos+48+8, oCrown);
//            obj.cost = 0;
//            obj.forSale = false;
//        }
//        else if (tile == "m" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            obj = instance_create(xpos, ypos, oDark);
//            obj.invincible = true;
//        }
//        else if (tile == "i")
//        {
//            instance_create(xpos, ypos, oIce);
//        }
//        else if (tile == "j" and rand(1,2) == 1)
//        {
//            instance_create(xpos, ypos, oIce);
//        }
//        else if (tile == "f")
//        {
//            instance_create(xpos, ypos, oDarkFall);
//        }
//        else if (tile == "w")
//        {
//            instance_create(xpos, ypos, oWaterSwim);
//        }
//    }
//}

//#define scrRoomGenYeti
////
//// scrRoomGenYeti()
////
//// Room generation for the Yeti Cave that appears randomly in Area 3: Ice.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

///*
//Note:

//ROOMS are 10x8 tile areas.

//strTemp = "0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000";

//OBSTACLES are 5x3 tile chunks that are randomized within rooms.
           
//strObs = "00000
//          00000
//          00000";
          
//The string representing a room or obstacle must be laid out unbroken:
//*/
//strTemp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000";

//roomPath = global.roomPath[scrGetRoomX(x), scrGetRoomY(y)];
//roomPathAbove = -1;
//if (scrGetRoomY(y) != 0) roomPathAbove = global.roomPath[scrGetRoomX(x), scrGetRoomY(y-128)];

//if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY) // start room
//{
//    if (roomPath == 2) n = rand(3,4);
//    else n = rand(1,2);
//    switch(n)
//    {
//        case 1: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"; break; }
//        // hole
//        case 3: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000002021111120"; break; }
//        case 4: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000002021111120"; break; }
//    }
//}
//else if (scrGetRoomX(x) == global.endRoomX and scrGetRoomY(y) == global.endRoomY) // end room
//{
//    if (roomPathAbove == 2) n = rand(1,4);
//    else n = rand(3,6);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "00000000006000060000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "00000000000010021110001001111000110111129012000000111111111021111111201111111111"; break; }
//        case 4: { strTemp = "00000000000111200100011110010021111011000000002109011111111102111111121111111111"; break; }
//        // no drop
//        case 5: { strTemp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        case 6: { strTemp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"; break; }
//    }
//}
//else if (roomPath == 0 and rand(1,4) < 4) // side room
//{
//    if (oGame.idol or scrGetRoomY(y) == 3)
//        n = rand(1,2);
//    else
//    {
//        n = rand(1,1);
//        if (n == 10) oGame.idol = true;
//        // else n = rand(1,9);
//    }

//    switch(n)
//    {
//        // upper plats
//        case 1: { strTemp = "00000000000010111100000000000000011010000050000000000000000000000000001111111111"; break; }
//        // high walls
//        case 2: { strTemp = "000000000011tttttt11120000002112002200211200000021120022002111ssssss111111111111"; break; }
//        // idols
//        // case 10: { strTemp = "22000000220000B0000000000000000000000000000000000000000000000000I000001111A01111"; break; }
//    }
//}
//else if (roomPath == 0 or roomPath == 1) // main room
//{
//    if (not instance_exists(oYetiKing))
//    {
//        n = rand(1,10)
//        if (y > 384) n = 10;
//        else if (y > 256 and rand(1,2) == 1) n = 10;
//        else if (y > 128 and rand(1,3) == 1) n = 10;
//    }
//    else n = rand(1,9);

//    switch(n)
//    {
//        // basic rooms
//        case 1: { strTemp = "60000600000000000000000000000000000000000050000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "60000600000000000000000000000000000000005000050000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "60000600000000000000000000000000050000000000000000000000000011111111111111111111"; break; }
//        case 4: { strTemp = "60000600000000000000000600000000000000000000000000000222220000111111001111111111"; break; }
//        case 5: { strTemp = "11111111112222222222000000000000000000000050000000000000000000000000001111111111"; break; }
//        case 6: { strTemp = "11111111112111111112022222222000000000000050000000000000000000000000001111111111"; break; }
//        // low ceiling
//        case 7: { strTemp = "11111111112111111112211111111221111111120111111110022222222000000000001111111111"; break; }
//        // thin ice
//        case 8: { strTemp = "6000060000000000000000000000000000000000000000000000000000000000000000tttttttttt"; break; }
//        case 9: { strTemp = "6000060000000000000000000000000000000000000000000001tttttt1021ssssss121111111111"; break; }
//        // yeti king
//        case 10: { strTemp = "iiiiiiiiiijiiiiiiiij0jjjjjjjj0000000000000000000000000Y0000000yy00yy001111111111"; break; }
//    }
//}
//else if (roomPath == 3) // main room
//{
//    switch(rand(1,9))
//    {
    
//        // basic rooms
//        case 1: { strTemp = "00000000000000000000000000000000000000000050000000000000000000000000001111111111"; break; }
//        case 2: { strTemp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "00000000000000000000000000000050000500000000000000000000000011111111111111111111"; break; }
//        case 4: { strTemp = "00000000000000000000000600000000000000000000000000000111110000111111001111111111"; break; }
//        // upper plats
//        case 5: { strTemp = "00000000000111111110001111110000000000005000050000000000000000000000001111111111"; break; }
//        case 6: { strTemp = "00000000000000000000000000000000000000000021111200021111112021111111121111111111"; break; }
//        case 7: { strTemp = "10000000011112002111111200211100000000000022222000111111111111111111111111111111"; break; }
//        // thin ice
//        case 8: { strTemp = "000000000000000000000000000000000000000000000000000000000000ssssssssss1111111111"; break; }
//        case 9: { strTemp = "100000000111110011111111tt111111200002110000000000000000000011100001111111tt1111"; break; }
//    }
//}
//else if (roomPath == 4) // shop
//{

//    strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..K$$$$000bbbbbbbbbb";

//    switch(rand(1,7))
//    {
//        case 1: { shopType = "General"; break; }
//        case 2: { shopType = "Bomb"; break; }
//        case 3: { shopType = "Weapon"; break; }
//        case 4: { shopType = "Rare"; break; }
//        case 5: { shopType = "Clothing"; break; }
//        case 6: { shopType = "Craps"; strTemp = "11111111111111111111111122111111Kl000211..bQ00W010.0+00000k0.q+dd00000bbbbbbbbbb"; break; }
//        case 7: { shopType = "Kissing"; strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..K00D0000bbbbbbbbbb"; oGame.damsel = true; break; }
//    }   
//}

//else if (roomPath == 5) // shop
//{

//    strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...000$$$$K..bbbbbbbbbb";
    
//    switch(rand(1,7))
//    {
//        case 1: { shopType = "General"; break; }
//        case 2: { shopType = "Bomb"; break; }
//        case 3: { shopType = "Weapon"; break; }
//        case 4: { shopType = "Rare"; break; }
//        case 5: { shopType = "Clothing"; break; }
//        case 6: { shopType = "Craps"; strTemp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000dd+q.bbbbbbbbbb"; break; }
//        case 7: { shopType = "Kissing"; strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...0000D00K..bbbbbbbbbb"; oGame.damsel = true; break; }
//    }
//}
//else if (roomPath == 8) // snake pit
//{
//    switch(rand(1,1))
//    {
//        case 1: { strTemp = "111000011111s0000s11111200211111s0000s11111200211111s0000s11111200211111s0000s11"; break; }
//    }
//}
//else if (roomPath == 9) // snake pit bottom
//{
//    switch(rand(1,1))
//    {
//        case 1: { strTemp = "111000011111s0000s1111100001111100S0001111S0110S11111STTS11111111111111111111111"; break; }
//    }    
//}
//else // drop
//{
//    if (roomPath == 7) n = rand(4,12);
//    else if (roomPathAbove != 2) n = rand(1,12);
//    else n = rand(1,8);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000006000060000000000000000000000006000060000000000000000000000000000000000"; break; }
//        case 2: { strTemp = "00000000006000060000000000000000000000000000050000000000000000000000001202111111"; break; }
//        case 3: { strTemp = "00000000006000060000000000000000000000050000000000000000000000000000001111112021"; break; }
//        case 4: { strTemp = "00000000006000060000000000000000000000000000000000000000000002200002201112002111"; break; }
//        case 5: { strTemp = "00000000000000220000000000000000200002000112002110011100111012000000211111001111"; break; }
//        case 6: { strTemp = "00000000000060000000000000000000000000000000000000001112220002100000001110111111"; break; }
//        case 7: { strTemp = "00000000000060000000000000000000000000000000000000002221110000000001201111110111"; break; }
//        case 8: { strTemp = "00000000000060000000000000000000000000000000000000002022020000100001001111001111"; break; }
//        case 9: { strTemp = "11111111112222222222000000000000000000000000000000000000000000000000001120000211"; break; }
//        case 10: { strTemp = "11111111112222111111000002211100000002110000000000200000000000000000211120000211"; break; }
//        case 11: { strTemp = "11111111111111112222111220000011200000000000000000000000000012000000001120000211"; break; }
//        case 12: { strTemp = "11111111112111111112021111112000211112000002112000000022000002200002201111001111"; break; }
//    }
//}
//// Add obstacles

//for (i = 1; i < 81; i += 1)
//{
//    j = i;
  
//    strObs1 = "00000";
//    strObs2 = "00000";
//    strObs3 = "00000";
//    tile = string_char_at(strTemp, i);
    
//    if (tile == "8")
//    {
//        switch(rand(1,7))
//        {
//            case 1: { strObs1 = "00900"; strObs2 = "01110"; strObs3 = "11111"; break; }
//            case 2: { strObs1 = "00900"; strObs2 = "02120"; strObs3 = "02120"; break; }
//            case 3: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "92222"; break; }
//            case 4: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "22229"; break; }
//            case 5: { strObs1 = "00000"; strObs2 = "11001"; strObs3 = "19001"; break; }
//            case 6: { strObs1 = "00000"; strObs2 = "10011"; strObs3 = "10091"; break; }
//            case 7: { strObs1 = "00000"; strObs2 = "12021"; strObs3 = "12921"; break; }
//        }
//    }
//    else if (tile == "5") // ground
//    {
//        switch(rand(1,16))
//        {
//            case 1: { strObs1 = "11111"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 2: { strObs1 = "00000"; strObs2 = "11110"; strObs3 = "00000"; break; }
//            case 3: { strObs1 = "00000"; strObs2 = "01111"; strObs3 = "00000"; break; }
//            case 4: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "11111"; break; }
//            case 5: { strObs1 = "00000"; strObs2 = "20200"; strObs3 = "17177"; break; }
//            case 6: { strObs1 = "00000"; strObs2 = "02020"; strObs3 = "71717"; break; }
//            case 7: { strObs1 = "00000"; strObs2 = "00202"; strObs3 = "77171"; break; }
//            case 8: { strObs1 = "00000"; strObs2 = "22200"; strObs3 = "11100"; break; }
//            case 9: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "01110"; break; }
//            case 10: { strObs1 = "00000"; strObs2 = "00222"; strObs3 = "00111"; break; }
//            case 11: { strObs1 = "11100"; strObs2 = "22200"; strObs3 = "00000"; break; }
//            case 12: { strObs1 = "01110"; strObs2 = "02220"; strObs3 = "00000"; break; }
//            case 13: { strObs1 = "00111"; strObs2 = "00222"; strObs3 = "00000"; break; }
//            case 14: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "21112"; break; }
//            case 15: { strObs1 = "00000"; strObs2 = "20100"; strObs3 = "77117"; break; }
//            case 16: { strObs1 = "00000"; strObs2 = "00102"; strObs3 = "71177"; break; }
//        }
//    }
//    else if (tile == "6") // air
//    {
//        switch(rand(1,10))
//        {
//            case 1: { strObs1 = "11111"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 2: { strObs1 = "22222"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 3: { strObs1 = "11100"; strObs2 = "22200"; strObs3 = "00000"; break; }
//            case 4: { strObs1 = "01110"; strObs2 = "02220"; strObs3 = "00000"; break; }
//            case 5: { strObs1 = "00111"; strObs2 = "00222"; strObs3 = "00000"; break; }
//            case 6: { strObs1 = "00000"; strObs2 = "01110"; strObs3 = "00000"; break; }
//            case 7: { strObs1 = "00000"; strObs2 = "01110"; strObs3 = "02220"; break; }
//            case 8: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "01110"; break; }
//            case 9: { strObs1 = "00000"; strObs2 = "00222"; strObs3 = "00111"; break; }
//            case 10: { strObs1 = "00000"; strObs2 = "22200"; strObs3 = "11100"; break; }
//        }
//    }
    
//    if (tile == "5" or tile == "6" or tile == "8")
//    {
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs1, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs2, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs3, strTemp, j);
//    }
//}

//// Generate the tiles
//for (j = 0; j < 8; j += 1)
//{
//    for (i = 1; i < 11; i += 1)
//    {
//        tile = string_char_at(strTemp, i+j*10);
//        xpos = x + (i-1)*16;
//        ypos = y + j*16;
//        if (tile == "1" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,6) == 1) instance_create(xpos, ypos, oDark);
//            else instance_create(xpos, ypos, oIce);
//        }
//        if (tile == "2" and rand(1,2) == 1 and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,6) == 1) instance_create(xpos, ypos, oDark);
//            else instance_create(xpos, ypos, oIce);
//        }
//        if (tile == "t" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            instance_create(xpos, ypos, oThinIce);
//        }
//        else if (tile == "L") instance_create(xpos, ypos, oLadderOrange);
//        else if (tile == "P") instance_create(xpos, ypos, oLadderTop);
//        else if (tile == "7" and rand(1,3) == 1) instance_create(xpos, ypos, oSpikes);
//        else if (tile == "4" and rand(1,4) == 1) instance_create(xpos, ypos, oPushBlock);
//        else if (tile == "9")
//        {
//            block = instance_create(xpos, ypos+16, oDark);
//            if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY)
//                instance_create(xpos, ypos, oEntrance);
//            else
//            {
//                instance_create(xpos, ypos, oExit);
//                global.exitX = xpos;
//                global.exitY = ypos;
//                block.invincible = true;
//            }
//        }
//        else if (tile == "A")
//        {
//            instance_create(xpos, ypos, oAltarLeft);
//            instance_create(xpos+16, ypos, oAltarRight);
//        }
//        else if (tile == "a")
//        {
//            instance_create(xpos, ypos, oChest);
//        }
//        else if (tile == "I")
//        {
//            instance_create(xpos+16, ypos+8, oGoldIdol);
//        }
//        else if (tile == "B")
//        {
//            instance_create(xpos+16, ypos+12, oGiantTikiHead);
//        }
//        else if (tile == "." and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            obj = instance_create(xpos, ypos, oDark);
//            obj.shopWall = true;
//        }
//        else if (tile == "Q")
//        {
//            if (shopType == "Craps")
//            {
//                tile_add(bgDiceSign, 0, 0, 48, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "q")
//        {
//            n = rand(1,6);
//            scrGenerateItem(xpos+8, ypos+8, 1);
//            obj.inDiceHouse = true;
//        }
//        else if (tile == "+")
//        {
//            obj = instance_create(xpos, ypos, oSolid);
//            obj.sprite_index = sIceBlock;
//            obj.shopWall = true;
//        }
//        else if (tile == "W")
//        {
//            if (global.murderer or global.thiefLevel > 0)
//            {
//                if (global.isDamsel) tile_add(bgWanted, 32, 0, 32, 32, xpos, ypos, 9004);
//                else if (global.isTunnelMan) tile_add(bgWanted, 64, 0, 32, 32, xpos, ypos, 9004);
//                else tile_add(bgWanted, 0, 0, 32, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "b")
//        {
//            obj = instance_create(xpos, ypos, oBrickSmooth);
//            obj.sprite_index = sDarkSmooth;
//            obj.shopWall = true;
//        }
//        else if (tile == "l")
//        {
//            if (oGame.damsel) instance_create(xpos, ypos, oLampRed);
//            else instance_create(xpos, ypos, oLamp);
//        }
//        else if (tile == "K")
//        {
//            obj = instance_create(xpos, ypos, oShopkeeper);
//            obj.style = shopType;
//        }
//        else if (tile == "k")
//        {
//            obj = instance_create(xpos, ypos, oSign);
//            if (shopType == "General") obj.sprite_index = sSignGeneral;
//            else if (shopType == "Bomb") obj.sprite_index = sSignBomb;
//            else if (shopType == "Weapon") obj.sprite_index = sSignWeapon;
//            else if (shopType == "Clothing") obj.sprite_index = sSignClothing;
//            else if (shopType == "Rare") obj.sprite_index = sSignRare;
//            else if (shopType == "Craps") obj.sprite_index = sSignCraps;
//            else if (shopType == "Kissing") obj.sprite_index = sSignKissing;
//        }
//        else if (tile == "$")
//        {
//            scrShopItemsGen();
//        }
//        else if (tile == "d")
//        {
//            instance_create(xpos+8, ypos+8, oDice);
//        }
//        else if (tile == "D")
//        {
//            obj = instance_create(xpos+8, ypos+8, oDamsel);
//            obj.forSale = true;
//            obj.status = 5;
//        }
//        else if (tile == "s")
//        {
//           instance_create(xpos, ypos, oSpikes);
//        }
//        else if (tile == "S")
//        {
//            instance_create(xpos, ypos, oSnake);
//        }
//        else if (tile == "T")
//        {
//            instance_create(xpos+8, ypos+8, oRubyBig);
//        }
//        else if (tile == "i")
//        {
//            instance_create(xpos, ypos, oIce);
//        }
//        else if (tile == "j" and rand(1,2) == 1)
//        {
//            instance_create(xpos, ypos, oIce);
//        }
//        else if (tile == "Y")
//        {
//            instance_create(xpos, ypos, oYetiKing);
//        }
//        else if (tile == "y")
//        {
//            instance_create(xpos, ypos, oYeti);
//        }
//    }
//}

//#define scrRoomGen4
////
//// scrRoomGen4()
////
//// Room generation for Area 4, the Temple.
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

///*
//Note:

//ROOMS are 10x8 tile areas.

//strTemp = "0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000";

//OBSTACLES are 5x3 tile chunks that are randomized within rooms.
           
//strObs = "00000
//          00000
//          00000";
          
//The string representing a room or obstacle must be laid out unbroken:
//*/
//strTemp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000";

//roomPath = global.roomPath[scrGetRoomX(x), scrGetRoomY(y)];
//if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY) // start room
//{
//    if (roomPath == 2) n = rand(2,2);
//    else n = rand(1,1);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"; break; }
//        // hole
//        case 2: { strTemp = "00000000000000000000000000000000000000000008000000000000000000000000002000000002"; break; }
//    }
//}
//else if (scrGetRoomX(x) == global.endRoomX and scrGetRoomY(y) == global.endRoomY) // end room
//{
//    n = rand(1,1);
//    switch(n)
//    {
//        case 1: { strTemp = "00000000000000000000000000000000000000000008000000000000000000000000000000000000"; break; }
//    }
//}
//else if (roomPath == 0 and rand(1,4) > 1) // side room
//{
//    if (global.cityOfGold)
//    {
//        n = rand(1,14);
//        if (n == 12) n = 15;
//    }
//    else if (not oGame.altar and rand(1,12) == 1)
//    {
//        n = 16;
//        oGame.altar = true;
//    }
//    else if (oGame.idol)
//    {
//        n = rand(1,11);
//    }
//    else
//    {
//        n = rand(1,12);
//        if (n == 12) oGame.idol = true;
//    }
        
//    switch(n)
//    {
//        // upper plats
//        case 1: { strTemp = "11111000001111100000111110000011111000001111150000111110000011111000001111111111"; break; }
//        case 2: { strTemp = "00000111110000011111000001111100000111115000011111000001111100000111111111111111"; break; }
//        // triangles
//        case 3: { strTemp = "11000000001110000000211100000011111000002211110000111111100022211111001111111111"; break; }
//        case 4: { strTemp = "00000000110000000111000000111200000111110000111122000111111100111112221111111111"; break; }
//        case 5: { strTemp = "11111111110000000000111111100011111100001111100000111100000011100000001100000011"; break; }
//        case 6: { strTemp = "11111111110000000000000111111100001111110000011111000000111100000001111100000011"; break; }
//        case 7: { strTemp = "11111111112000000002110122101111000000111101221011200000000220012210021100000011"; break; }
//        case 8: { strTemp = "11111111110002112000110011001111102201111100110011020111102000021120001111111111"; break; }
//        case 9: { strTemp = "1111111111000000000011011110111101111011100111100111wwwwww1111wwwwww111111111111"; break; }
//        // sun room
//        case 10: {
//            if (rand(1,2) == 1) strTemp = "1000000001000000000010000000011000000001100000000100T0000T000dddddddd01111111111";
//            else strTemp = "1000000001000000000010000000011000000001100000000100T0000T000dddddddd01111111111";
//            break;
//        }
//        case 11: { strTemp = "10000000010021111200100000000110000000011111001111111200211111120021111111001111"; break; }
//        // idol
//        case 12: { strTemp = "11CCCCCC11110000001111000000111D000000D1100000000100000000000000I000001111111111"; break; }
//        // treasure vaults
//        case 13: { strTemp = "11ttttt0111111111011110ttttt11110111111111ttttt011111111101111cttttt111111111111"; break; }
//        case 14: { strTemp = "1111111111110ttttc11110111111111ttttt0111111111011110ttttt1111011111111100000011"; break; }
//        case 15: { strTemp = "111111111111111111111111cc1111110111101111c1111c111111cc111111111111111111111111"; break; }
//        // altars
//        case 16: { strTemp = "220000002200000000000000000000000000000000000000000000x0000002211112201111111111"; break; }
//    }
//}
//else if (roomPath == 0 or roomPath == 1)
//{
//    if (global.cityOfGold) n = rand(1,12);
//    else n = rand(1,10);
//    switch(n)
//    {
//        // basic rooms
//        case 1: { strTemp = "1000000001200r000002100000000110000000011100000011000000000000000000001111111111"; break; }
//        case 2: { strTemp = "1000000000100r000000100000000010000000001100000000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "0000000001000r000001000000000100000000010000000011000000000000000000001111111111"; break; }
//        case 4: { strTemp = "0000000001000r000001000000000100000000010000000011000022000000011110001111111111"; break; }
//        case 5: { strTemp = "110000001100L0000L0011Pr000P1111L0000L1111L0000L1102L0000L2000000000001111111111"; break; }
//        // hallways
//        case 6: { strTemp = "11111111111111111111111111111111111111111111111111000000000000000000001111111111"; break; }
//        case 7: { strTemp = "1000000001000r000000100000000110000000011111111111000000000000000000001111111111"; break; }
//        case 8: { strTemp = "120r000021000000000012000000211220LL02211111PP11110011LL11000000LL00001111111111"; break; }         
//        case 9: { strTemp = "11111111112400000042110111101112000000211111111111000000000000000000001111111111"; break; }         
//        // lava
//        case 10: { strTemp = "0000000000000000000000000000000000000000013wwww310013wwww31011133331111111111111"; break; }
//        case 11: { strTemp = "1000000001000r0000001000000001100000000111111111110000?0000000000000001111111111"; break; }         
//        case 12: { strTemp = "100000000100000000001000?0000110000000011111111111000000000000000000001111111111"; break; }         
//    }
//}
//else if (roomPath == 3)
//{
//    switch(rand(1,4))
//    {
//        // basic rooms
//        case 1: { strTemp = "1000000001100r000001100000000110000000011100000011000000000000000000001111111111"; break; }
//        case 2: { strTemp = "1000000000100r000000100000000010000000001100000000000000000000000000001111111111"; break; }
//        case 3: { strTemp = "0000000001000r000001000000000100000000010000000011000000000000000000001111111111"; break; }
//        // lava
//        case 4: { strTemp = "0000000000000000000000000000000000000000013wwww310013wwww31011133331111111111111"; break; }
//    }
//}
//else if (roomPath == 4) // shop
//{
//    strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..Kiiii000bbbbbbbbbb";
    
//    if (oGame.damsel) n = rand(1,6);
//    else n = rand(1,7);
//    switch(n)
//    {
//        case 1: { shopType = "General"; break; }
//        case 2: { shopType = "Bomb"; break; }
//        case 3: { shopType = "Weapon"; break; }
//        case 4: { shopType = "Rare"; break; }
//        case 5: { shopType = "Clothing"; break; }
//        case 6: { shopType = "Craps"; strTemp = "11111111111111111111111122111111Kl000211..bQ00W010.0+00000k0.q+uu00000bbbbbbbbbb"; break; }
//        case 7: { shopType = "Kissing"; strTemp = "111111111111111111111111221111111p000211...000W010...00000k0..K00A0000bbbbbbbbbb"; oGame.damsel = true; break; }
//    }   
//}
//else if (roomPath == 5) // shop
//{
//    strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...000iiiiK..bbbbbbbbbb";
    
//    if (oGame.damsel) n = rand(1,6);
//    else n = rand(1,7);
//    switch(n)
//    {
//        case 1: { shopType = "General"; break; }
//        case 2: { shopType = "Bomb"; break; }
//        case 3: { shopType = "Weapon"; break; }
//        case 4: { shopType = "Rare"; break; }
//        case 5: { shopType = "Clothing"; break; }
//        case 6: { shopType = "Craps"; strTemp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000uu+q.bbbbbbbbbb"; break; }
//        case 7: { shopType = "Kissing"; strTemp = "111111111111111111111111221111112000p11101W0000...0k00000...0000A00K..bbbbbbbbbb"; oGame.damsel = true; break; }
//    }
//}
//else if (roomPath == 6) // Lady Xoc
//{
//    strTemp = "000000000000X0000000000000000000000000000000000000000000000000000000001111111111";
//}
//else if (roomPath == 7) // pit top
//{
//    strTemp = "0000000000000000000000000000000000000000000100100000110011000111;01110111BBBB111";
//}
//else if (roomPath == 8) // pit
//{
//    strTemp = "11200002111120000211112000021111200002111120000211112000021111200002111120000211";
//}
//else if (roomPath == 9) // pit bottom
//{
//    strTemp = "112000021111200002111120000211113wwww311113wwww311113wwww31111RRRRRR111111111111";
//}
//else // drop
//{
//    switch(rand(1,8))
//    {
//        case 1: { strTemp = "00000000000000000000000000000000000000000000000000000000000000444044401111101111"; break; }
//        case 2: { strTemp = "00000000000000000000000000000000000000000000000000000000000004440004441111000111"; break; }
//        case 3: { strTemp = "00000000006000060000000000000000000000006000060000000000000000000000001000000001"; break; }
//        case 4: { strTemp = "00000000000000000000000000000000000000000000000000000000000000000000001000111111"; break; }
//        case 5: { strTemp = "00000000000000000000000000000000000000000000000000000000000000000000001111110001"; break; }
//        case 6: { strTemp = "00000000000060000000000000000000000000000000000000001112220000100000001110111111"; break; }
//        case 7: { strTemp = "00000000000060000000000000000000000000000000000000002221110000000001001111110111"; break; }
//        case 8: { strTemp = "00000000000060000000000000000000000000000000000000001011010000100001001111001111"; break; }
//    }
//}

//// Add obstacles

//for (i = 1; i < 81; i += 1)
//{
//    j = i;
  
//    strObs1 = "00000";
//    strObs2 = "00000";
//    strObs3 = "00000";
//    tile = string_char_at(strTemp, i);
    
//    if (tile == "8")
//    {
//        switch(rand(1,1))
//        {
//            case 1: { strObs1 = "00900"; strObs2 = "21112"; strObs3 = "21112"; break; }
//        }
//    }
//    else if (tile == "5") // ground
//    {
//        switch(rand(1,8))
//        {
//            case 1: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "21112"; break; }
//            case 2: { strObs1 = "00000"; strObs2 = "02020"; strObs3 = "21212"; break; }
//            case 3: { strObs1 = "11100"; strObs2 = "11110"; strObs3 = "11111"; break; }
//            case 4: { strObs1 = "00111"; strObs2 = "01111"; strObs3 = "11111"; break; }
//            case 5: { strObs1 = "21112"; strObs2 = "22222"; strObs3 = "00000"; break; }
//            case 6: { strObs1 = "00022"; strObs2 = "00011"; strObs3 = "00011"; break; }
//            case 7: { strObs1 = "22000"; strObs2 = "11000"; strObs3 = "11000"; break; }
//            case 8: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "00000"; break; }
//        }
//    }
//    else if (tile == "6") // air
//    {
//        switch(rand(1,10))
//        {
//            case 1: { strObs1 = "11111"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 2: { strObs1 = "22222"; strObs2 = "00000"; strObs3 = "00000"; break; }
//            case 3: { strObs1 = "22200"; strObs2 = "22200"; strObs3 = "00000"; break; }
//            case 4: { strObs1 = "02220"; strObs2 = "02220"; strObs3 = "00000"; break; }
//            case 5: { strObs1 = "00222"; strObs2 = "00222"; strObs3 = "00000"; break; }
//            case 6: { strObs1 = "00000"; strObs2 = "01110"; strObs3 = "00000"; break; }
//            case 7: { strObs1 = "00000"; strObs2 = "01110"; strObs3 = "02220"; break; }
//            case 8: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "01110"; break; }
//            case 9: { strObs1 = "00000"; strObs2 = "20100"; strObs3 = "00111"; break; }
//            case 10: { strObs1 = "00000"; strObs2 = "00102"; strObs3 = "11100"; break; }
//        }
//    }
//    else if (tile == "r") // air
//    {
//        switch(rand(1,10))
//        {
//            case 1: { strObs1 = "1111"; strObs2 = "0000"; strObs3 = "0000"; break; }
//            case 2: { strObs1 = "2222"; strObs2 = "0000"; strObs3 = "0000"; break; }
//            case 3: { strObs1 = "2220"; strObs2 = "2220"; strObs3 = "0000"; break; }
//            case 4: { strObs1 = "0222"; strObs2 = "0222"; strObs3 = "0000"; break; }
//            case 5: { strObs1 = "2222"; strObs2 = "0000"; strObs3 = "2222"; break; }
//            case 6: { strObs1 = "0000"; strObs2 = "1111"; strObs3 = "0000"; break; }
//            case 7: { strObs1 = "0000"; strObs2 = "1111"; strObs3 = "2222"; break; }
//            case 8: { strObs1 = "0000"; strObs2 = "2222"; strObs3 = "1111"; break; }
//            case 9: { strObs1 = "0000"; strObs2 = "0220"; strObs3 = "2112"; break; }
//            case 10: { strObs1 = "0000"; strObs2 = "2002"; strObs3 = "1221"; break; }
//        }
//    }
    
//    if (tile == "5" or tile == "6" or tile == "8")
//    {
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs1, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs2, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs3, strTemp, j);
//    }
//    else if (tile == "r")
//    {
//        strTemp = string_delete(strTemp, j, 4);
//        strTemp = string_insert(strObs1, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 4);
//        strTemp = string_insert(strObs2, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 4);
//        strTemp = string_insert(strObs3, strTemp, j);
//    }
//}

//// Generate the tiles
//for (j = 0; j < 8; j += 1)
//{
//    for (i = 1; i < 11; i += 1)
//    {
//        tile = string_char_at(strTemp, i+j*10);
//        xpos = x + (i-1)*16;
//        ypos = y + j*16;
//        if (tile == "1" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,100) == 1) instance_create(xpos, ypos, oLush);
//            else if (rand(1,10) == 1) instance_create(xpos, ypos, oBlock);
//            else instance_create(xpos, ypos, oTemple);
//        }
//        else if (tile == "2" and rand(1,2) == 1 and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,10) == 1) instance_create(xpos, ypos, oBlock);
//            else instance_create(xpos, ypos, oTemple);
//        }
//        else if (tile == "3" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,2) == 1) instance_create(xpos, ypos, oLava);
//            else instance_create(xpos, ypos, oTemple);
//        }
//        else if (tile == "R" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            block = instance_create(xpos, ypos, oTemple);
//            with block { treasure = "Big Ruby"; }
//        }
//        else if (tile == "L") instance_create(xpos, ypos, oLadderOrange);
//        else if (tile == "P") instance_create(xpos, ypos, oLadderTop);
//        else if (tile == "7" and rand(1,3) == 1) instance_create(xpos, ypos, oSpikes);
//        else if (tile == "4" and rand(1,4) == 1) instance_create(xpos, ypos, oPushBlock);
//        else if (tile == "9")
//        {
//            block = instance_create(xpos, ypos+16, oTemple);
//            if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY)
//                instance_create(xpos, ypos, oEntrance);
//            else
//            {
//                instance_create(xpos, ypos, oExit);
//                global.exitX = xpos;
//                global.exitY = ypos;
//                block.invincible = true;
//            }
//        }
//        else if (tile == "a")
//        {
//            instance_create(xpos+8, ypos+8, oChest);
//        }
//        else if (tile == "c")
//        {
//            if (rand(1,2) == 1) instance_create(xpos+8, ypos+8, oChest);
//            else instance_create(xpos+8, ypos+8, oCrate);
//        }
//        else if (tile == "t")
//        {
//            if (rand(1,120) == 1) instance_create(xpos+8, ypos+12, oRubyBig);
//            else if (rand(1,80) == 1) instance_create(xpos+8, ypos+12, oSapphireBig);
//            else if (rand(1,60) == 1) instance_create(xpos+8, ypos+12, oEmeraldBig);
//            else instance_create(xpos+8, ypos+8, oGoldBars);
//        }
//        else if (tile == "x")
//        {
//            instance_create(xpos, ypos, oSacAltarLeft);
//            instance_create(xpos+16, ypos, oSacAltarRight);
//            tile_add(bgKaliBody, 0, 0, 64, 64, xpos-16, ypos-48, 10001);
//            instance_create(xpos+16, ypos-80+16, oKaliHead);
//        }
//        else if (tile == "X")
//        {
//            for (l = 0; l < 6; l += 1)
//            {
//                for (k = 0; k < 5; k += 1)
//                {
//                    obj = instance_create(xpos+k*16, ypos+l*16, oXocBlock);
//                    if (k == 2 and l == 1) obj.treasure = "Diamond";
//                    if (k == 1 and l == 2) obj.treasure = "Sapphire";
//                    if (k == 3 and l == 2) obj.treasure = "Sapphire";
//                    if (k == 0 and l == 3) obj.treasure = "Emerald";
//                    if (k == 4 and l == 3) obj.treasure = "Emerald";
//                    if (k == 2 and l == 4) obj.treasure = "Ruby";
//                    tile_add(bgLadyXoc, k*16, l*16, 16, 16, xpos+k*16, ypos+l*16, 99);
//                }
//            }
//        }
//        else if (tile == "I")
//        {
//            instance_create(xpos+16, ypos+12, oGoldIdol);
//        }
//        else if (tile == ";")
//        {
//            obj = instance_create(xpos+8, ypos+8, oDamsel);
//            obj.cost = 0;
//            obj.forSale = false;
//            instance_create(xpos+16+8, ypos+12, oGoldIdol);
//        }
//        else if (tile == "B")
//        {
//            if (rand(1,1) == 1) instance_create(xpos, ypos, oTrapBlock);
//        }
//        else if (tile == "C")
//        {
//            instance_create(xpos, ypos, oCeilingTrap);
//        }
//        else if (tile == "D")
//        {
//            instance_create(xpos, ypos, oDoor);
//            instance_create(xpos, ypos, oTempleFake);
//            instance_create(xpos, ypos+16, oTempleFake);
//        }
//        else if (tile == "A")
//        {
//            obj = instance_create(xpos+8, ypos+8, oDamsel);
//            obj.forSale = true;
//            obj.status = 5;
//        }
//        else if (tile == "?")
//        {
//            instance_create(xpos, ypos, oTombLord);
//        }
//        else if (tile == "." and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            obj = instance_create(xpos, ypos, oTemple);
//            obj.shopWall = true;
//        }
//        else if (tile == "Q")
//        {
//            if (shopType == "Craps")
//            {
//                tile_add(bgDiceSign, 0, 0, 48, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "q")
//        {
//            n = rand(1,6);
//            scrGenerateItem(xpos+8, ypos+8, 1);
//            obj.inDiceHouse = true;
//        }
//        else if (tile == "+")
//        {
//            obj = instance_create(xpos, ypos, oSolid);
//            obj.sprite_index = sIceBlock;
//            obj.shopWall = true;
//        }
//        else if (tile == "W")
//        {
//            if (global.murderer or global.thiefLevel > 0)
//            {
//                if (global.isDamsel) tile_add(bgWanted, 32, 0, 32, 32, xpos, ypos, 9004);
//                else if (global.isTunnelMan) tile_add(bgWanted, 64, 0, 32, 32, xpos, ypos, 9004);
//                else tile_add(bgWanted, 0, 0, 32, 32, xpos, ypos, 9004);
//            }
//        }
//        else if (tile == "b")
//        {
//            obj = instance_create(xpos, ypos, oTemple);
//            obj.shopWall = true;
//        }
//        else if (tile == "l")
//        {
//            instance_create(xpos, ypos, oLamp);
//        }
//        else if (tile == "p")
//        {
//            instance_create(xpos, ypos, oLampRed);
//        }
//        else if (tile == "K")
//        {
//            obj = instance_create(xpos, ypos, oShopkeeper);
//            obj.style = shopType;
//        }
//        else if (tile == "k")
//        {
//            obj = instance_create(xpos, ypos, oSign);
//            if (shopType == "General") obj.sprite_index = sSignGeneral;
//            else if (shopType == "Bomb") obj.sprite_index = sSignBomb;
//            else if (shopType == "Weapon") obj.sprite_index = sSignWeapon;
//            else if (shopType == "Clothing") obj.sprite_index = sSignClothing;
//            else if (shopType == "Rare") obj.sprite_index = sSignRare;
//            else if (shopType == "Craps") obj.sprite_index = sSignCraps;
//            else if (shopType == "Kissing") obj.sprite_index = sSignKissing;
//        }
//        else if (tile == "i")
//        {
//            scrShopItemsGen();
//        }

//        else if (tile == "w")
//        {
//            instance_create(xpos, ypos, oLava);
//        }
//        else if (tile == "u")
//        {
//            instance_create(xpos+8, ypos+8, oDice);
//        }
//        else if (tile == "d")
//        {
//            instance_create(xpos, ypos, oLush);
//        }
//        else if (tile == "e")
//        {
//            if (rand(1,2) == 1) instance_create(xpos, ypos, oLush);
//        }
//        else if (tile == "T")
//        {
//            instance_create(xpos, ypos, oTree);
//            n = 0;
//            tx = xpos;
//            ty = ypos-16;
//            b1 = false;
//            b2 = false;
//            for (m = 0; m < 5; m += 1)
//            {
//                if (rand(0,m) > 2)
//                {
//                    break;
//                }
//                else
//                {
//                    if (not collision_point(tx, ty-16, oSolid, 0, 0) and
//                        not collision_point(tx-16, ty-16, oSolid, 0, 0) and
//                        not collision_point(tx+16, ty-16, oSolid, 0, 0))                    
//                    {
//                        instance_create(tx, ty, oTree);
//                        if (m < 4)
//                        {
//                            if (rand(1,5) < 4 and not b1)
//                            {
//                                instance_create(tx+16, ty, oTreeBranch);
//                                b1 = true;
//                            }
//                            else if (b1) b1 = false;
//                            if (rand(1,5) < 4 and not b2)
//                            {
//                                instance_create(tx-16, ty, oTreeBranch);
//                                b2 = true;
//                            }
//                            else if (b2) b2 = false;
//                        }
//                    }
//                    else
//                    {
//                        break;
//                    }
//                }
//                ty -= 16;
//            }
//            instance_create(tx-16, ty+16, oLeaves);
//            instance_create(tx+16, ty+16, oLeaves);
//        }
//    }
//}

//#define scrRoomGen5
////
//// scrRoomGen5()
////
//// Room generation for the final boss level (which is only partially randomized).
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

///*
//Note:

//ROOMS are 10x8 tile areas.

//strTemp = "0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000
//           0000000000";

//OBSTACLES are 5x3 tile chunks that are randomized within rooms.
           
//strObs = "00000
//          00000
//          00000";
          
//The string representing a room or obstacle must be laid out unbroken:
//*/
//strTemp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000";

//roomPath = global.roomPath[scrGetRoomX(x), scrGetRoomY(y)];
//if (y < 480)
//{
//    switch(rand(1,6))
//    {
//        case 1: { strTemp = "60000000000000000000000000000000000000000000000000600000000000000000000000000000"; break; }
//        case 2: { strTemp = "00000600000000000000000000000000000000000000000000600000000000000000000000000000"; break; }
//        case 3: { strTemp = "60000000000000000000000000000000000000000000000000000006000000000000000000000000"; break; }
//        case 4: { strTemp = "60000600000000000000000000000000000000000000000000000000000000000000000000000000"; break; }
//        case 5: { strTemp = "00000000000000000000000000000000000000000000000000600006000000000000000000000000"; break; }
//        case 6: { strTemp = "00000000000000000000000000000000600000000000000000000000000000000000000000000000"; break; }
//    }
//}
//else
//{
//    switch(rand(1,6))
//    {
//        case 1: { strTemp = "11111111111111111111111111111111111111111111111111111111111111111111111111111111"; break; }
//        case 2: { strTemp = "11111111111222111111122211111111111111111111111111111111111111111111111111111111"; break; }
//        case 3: { strTemp = "11111111111111111111111111111111122221111112222111111111111111111111111111111111"; break; }
//        case 4: { strTemp = "11111111111111112221111111222111111111111111111111111111111111111111111111111111"; break; }
//        case 5: { strTemp = "11111111111111111111111111111111111111111111111111122211111112221111111111111111"; break; }
//        case 6: { strTemp = "11111111111111111111111111111111111111111111111111111111222111111122211111111111"; break; }
//    }
//}

//// Add obstacles

//for (i = 1; i < 81; i += 1)
//{
//    j = i;
  
//    strObs1 = "00000";
//    strObs2 = "00000";
//    strObs3 = "00000";
//    tile = string_char_at(strTemp, i);
    
//    if (tile == "8")
//    {
//        switch(rand(1,1))
//        {
//            case 1: { strObs1 = "00900"; strObs2 = "21112"; strObs3 = "21112"; break; }
//        }
//    }
//    else if (tile == "5") // ground
//    {
//        switch(rand(1,8))
//        {
//            case 1: { strObs1 = "00000"; strObs2 = "02220"; strObs3 = "21112"; break; }
//            case 2: { strObs1 = "00000"; strObs2 = "02020"; strObs3 = "21212"; break; }
//            case 3: { strObs1 = "11100"; strObs2 = "11110"; strObs3 = "11111"; break; }
//            case 4: { strObs1 = "00111"; strObs2 = "01111"; strObs3 = "11111"; break; }
//            case 5: { strObs1 = "21112"; strObs2 = "22222"; strObs3 = "00000"; break; }
//            case 6: { strObs1 = "00022"; strObs2 = "00011"; strObs3 = "00011"; break; }
//            case 7: { strObs1 = "22000"; strObs2 = "11000"; strObs3 = "11000"; break; }
//            case 8: { strObs1 = "00000"; strObs2 = "00000"; strObs3 = "00000"; break; }
//        }
//    }
//    else if (tile == "6") // air
//    {
//        switch(rand(1,8))
//        {
//            case 1: { strObs1 = "0TTT0"; strObs2 = "21112"; strObs3 = "02220"; break; }
//            case 2: { strObs1 = "0000T"; strObs2 = "0TTT1"; strObs3 = "21111"; break; }
//            case 3: { strObs1 = "T0000"; strObs2 = "1TTT0"; strObs3 = "11112"; break; }
//            case 4: { strObs1 = "1TT00"; strObs2 = "11112"; strObs3 = "12200"; break; }
//            case 5: { strObs1 = "0TTT1"; strObs2 = "21111"; strObs3 = "00221"; break; }
//            case 6: { strObs1 = "21112"; strObs2 = "TTTTT"; strObs3 = "11111"; break; }
//        }
//    }
    
//    if (tile == "5" or tile == "6" or tile == "8")
//    {
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs1, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs2, strTemp, j);
//        j += 10;
//        strTemp = string_delete(strTemp, j, 5);
//        strTemp = string_insert(strObs3, strTemp, j);
//    }
//}

//// Generate the tiles
//for (j = 0; j < 8; j += 1)
//{
//    for (i = 1; i < 11; i += 1)
//    {
//        tile = string_char_at(strTemp, i+j*10);
//        xpos = x + (i-1)*16;
//        ypos = y + j*16;
//        if (tile == "1" and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,10) == 1) instance_create(xpos, ypos, oBlock);
//            else
//            {
//                instance_create(xpos, ypos, oTemple);
//            }
//        }
//        else if (tile == "2" and rand(1,2) == 1 and not collision_point(xpos, ypos, oSolid, 0, 0))
//        {
//            if (rand(1,10) == 1) instance_create(xpos, ypos, oBlock);
//            else
//            {
//                instance_create(xpos, ypos, oTemple);
//            }
//        }
//        else if (tile == "L") instance_create(xpos, ypos, oVine);
//        else if (tile == "P") instance_create(xpos, ypos, oVineTop);
//        else if (tile == "7" and rand(1,3) == 1) instance_create(xpos, ypos, oSpikes);
//        else if (tile == "4" and rand(1,4) == 1) instance_create(xpos, ypos, oPushBlock);
//        else if (tile == "9")
//        {
//            if (scrGetRoomX(x) == global.startRoomX and scrGetRoomY(y) == global.startRoomY)
//                instance_create(xpos, ypos, oEntrance);
//            else
//            {
//                instance_create(xpos, ypos, oExit);
//                global.exitX = xpos;
//                global.exitY = ypos;
//            }
//            block = instance_create(xpos, ypos+16, oTemple);
//            block.invincible = true;
//        }
//        else if (tile == "a")
//        {
//            if (rand(1,1) == 1) instance_create(xpos+8, ypos+8, oChest);
//        }
//        else if (tile == "T")
//        {
//            if (rand(1,15) == 1) instance_create(xpos+8, ypos+8, oChest);
//            else if (rand(1,6) == 1) instance_create(xpos+8, ypos+8, oGoldBars);
//            else if (rand(1,6) == 1) instance_create(xpos+8, ypos+12, oEmeraldBig);
//            else if (rand(1,8) == 1) instance_create(xpos+8, ypos+12, oSapphireBig);
//            else if (rand(1,10) == 1) instance_create(xpos+8, ypos+12, oRubyBig);
//            else if (rand(1,10) == 1) instance_create(xpos+8, ypos+8, oCrate);
//            else if (rand(1,10) == 1) instance_create(xpos, ypos, oBlock);
//            else
//            {
//                instance_create(xpos, ypos, oTemple);
//            }
//        }
//        else if (tile == "t")
//        {
//            instance_create(xpos, ypos, oThwompTrap);
//        }
//        else if (tile == "I")
//        {
//            if (rand(1,1) == 1) instance_create(xpos+16, ypos, oGoldIdol);
//        }
//        else if (tile == "C")
//        {
//            instance_create(xpos, ypos, oCeilingTrap);
//        }
//        else if (tile == "D")
//        {
//            instance_create(xpos, ypos, oTempleFake);
//            instance_create(xpos, ypos+16, oTempleFake);
//            instance_create(xpos, ypos, oDoor);
//        }
//        else if (tile == "w")
//        {
//            instance_create(xpos, ypos, oWaterSwim);
//        }
//    }
//}

//#define scrGetName
////
//// scrGetName()
////
//// Return a random name (for shopkeeper).
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//switch(rand(1,32))
//{
//    case 1: { return "AHKMED"; }
//    case 2: { return "TERRY"; }
//    case 3: { return "SMITHY"; }
//    case 4: { return "LEON"; }
//    case 5: { return "ALI"; }
//    case 6: { return "ELBERT"; }
//    case 7: { return "KAO"; }
//    case 8: { return "DUKE"; }
//    case 9: { return "TONY"; }
//    case 10: { return "GUERT"; }
//    case 11: { return "PANCHO"; }
//    case 12: { return "EARL"; }
//    case 13: { return "IVAN"; }
//    case 14: { return "OLLIE"; }
//    case 15: { return "SPOONY"; }
//    case 16: { return "BOB"; }
//    case 17: { return "RUDY"; }
//    case 18: { return "JIMBO"; }
//    case 19: { return "TOR"; }
//    case 20: { return "WILLY"; }
//    case 21: { return "HAMISH"; }
//    case 22: { return "LAZLO"; }
//    case 23: { return "WANG"; }
//    case 24: { return "HERBIE"; }
//    case 25: { return "ANDY"; }
//    case 26: { return "DONG"; }
//    case 27: { return "LEMMY"; }
//    case 28: { return "BARNEY"; }
//    case 29: { return "LOU"; }
//    case 30: { return "TARN"; }
//    case 31: { return "SLASH"; }
//    case 32: { return "BROM"; }
//}

//return "AHKMED";

//#define scrShopItemsGen
////
//// scrShopItemsGen()
////
//// Generate shop items.  Must be called from scrRoomGenX().
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//if (shopType == "Bomb")
//{
//    while (true)
//    {
//        if (rand(1,5) == 1)
//        {
//            if (not instance_exists(oPaste)) { obj = instance_create(xpos+8, ypos+10, oPaste); break; }
//        }
//        else if (rand(1,4) == 1) { obj = instance_create(xpos+8, ypos+8, oBombBox); break; }
//        else { obj = instance_create(xpos+8, ypos+10, oBombBag); break; }
//    }
//}
//else if (shopType == "Weapon")
//{
//    m = 20;
//    while (true)
//    {
//        n = rand(1,4);
//        if (m <= 0) { obj = instance_create(xpos+8, ypos+10, oBombBag); break; }
//        else if (rand(1,12)==1)
//        {
//            if (not instance_exists(oWebCannon)) { obj = instance_create(xpos+8, ypos+12, oWebCannon); break; }
//        }
//        else if (rand(1,10)==1)
//        {
//            if (not instance_exists(oShotgun)) { obj = instance_create(xpos+8, ypos+12, oShotgun); break; }
//        }
//        else if (rand(1,6)==1) { obj = instance_create(xpos+8, ypos+10, oBombBox); break; }
//        else if (n == 1)
//        {
//            if (not instance_exists(oPistol)) { obj = instance_create(xpos+8, ypos+12, oPistol); break; }
//        }
//        else if (n == 2)
//        {
//            if (not instance_exists(oMachete)) { obj = instance_create(xpos+8, ypos+12, oMachete); break; }
//        }
//        else if (n == 3) { obj = instance_create(xpos+8, ypos+10, oBombBag); break; }
//        else if (n == 4)
//        {
//            if (not instance_exists(oBow)) { obj = instance_create(xpos+8, ypos+12, oBow); break; }
//        }
//        m -= 1;
//    }
//}
//else if (shopType == "Clothing")
//{
//    m = 20;
//    while (true)
//    {
//        n = rand(1,6);
//        if (rand(1,m) == 1) { obj = instance_create(xpos+8, ypos+11, oRopePile); break; }
//        else if (n == 1)
//        {
//            if (not instance_exists(oSpringShoes)) { obj = instance_create(xpos+8, ypos+10, oSpringShoes); break; }
//        }
//        else if (n == 2)
//        {
//            if (not instance_exists(oSpectacles)) { obj = instance_create(xpos+8, ypos+10, oSpectacles); break; }
//        }
//        else if (n == 3)
//        {
//            if (not instance_exists(oGloves)) { obj = instance_create(xpos+8, ypos+8, oGloves); break; }
//        }
//        else if (n == 4)
//        {
//            if (not instance_exists(oMitt)) { obj = instance_create(xpos+8, ypos+8, oMitt); break; }
//        }
//        else if (n == 5)
//        {
//            if (not instance_exists(oCapePickup)) { obj = instance_create(xpos+8, ypos+10, oCapePickup); break; }
//        }
//        else if (n == 6)
//        {
//            if (not instance_exists(oSpikeShoes)) { obj = instance_create(xpos+8, ypos+10, oSpikeShoes); break; }
//        }
//        m -= 1;
//    }
//}
//else if (shopType == "Rare")
//{
//    m = 20;
//    while (true)
//    {
//        n = rand(1,11);
//        if (rand(1,m) == 1) { obj = instance_create(xpos+8, ypos+8, oBombBox); break; }
//        else if (n == 1)
//        {
//            if (not instance_exists(oSpringShoes)) { obj = instance_create(xpos+8, ypos+10, oSpringShoes); break; }
//        }
//        else if (n == 2)
//        {
//            if (not instance_exists(oCompass)) { obj = instance_create(xpos+8, ypos+10, oCompass); break; }
//        }
//        else if (n == 3)
//        {
//            if (not instance_exists(oMattock)) { obj = instance_create(xpos+8, ypos+10, oMattock); break; }
//        }
//        else if (n == 4)
//        {
//            if (not instance_exists(oSpectacles)) { obj = instance_create(xpos+8, ypos+10, oSpectacles); break; }
//        }
//        else if (n == 5)
//        {
//            if (not instance_exists(oJetpack)) { obj = instance_create(xpos+8, ypos+8, oJetpack); break; }
//        }
//        else if (n == 6)
//        {
//            if (not instance_exists(oGloves)) { obj = instance_create(xpos+8, ypos+8, oGloves); break; }
//        }
//        else if (n == 7)
//        {
//            if (not instance_exists(oMitt)) { obj = instance_create(xpos+8, ypos+8, oMitt); break; }
//        }
//        else if (n == 8)
//        {
//            if (not instance_exists(oWebCannon)) { obj = instance_create(xpos+8, ypos+12, oWebCannon); break; }
//        }
//        else if (n == 9)
//        {
//            if (not instance_exists(oCapePickup)) { obj = instance_create(xpos+8, ypos+10, oCapePickup); break; }
//        }
//        else if (n == 10)
//        {
//            if (not instance_exists(oTeleporter)) { obj = instance_create(xpos+8, ypos+12, oTeleporter); break; }
//        }
//        else if (n == 11)
//        {
//            if (not instance_exists(oSpikeShoes)) { obj = instance_create(xpos+8, ypos+10, oSpikeShoes); break; }
//        }
//        m -= 1;
//    }
//}
//else
//{
//    while (true)
//    {
//        n = rand(1,3);
//        if (rand(1,20) == 1)
//        {
//            if (not instance_exists(oMattock)) { obj = instance_create(xpos+8, ypos+10, oMattock); break; }
//        }
//        else if (rand(1,10) == 1)
//        {
//            if (not instance_exists(oGloves)) { obj = instance_create(xpos+8, ypos+8, oGloves); break; }
//        }
//        else if (rand(1,10) == 1)
//        {
//            if (not instance_exists(oCompass)) { obj = instance_create(xpos+8, ypos+10, oCompass); break; }
//        }
//        else if (n == 1) { obj = instance_create(xpos+8, ypos+10, oBombBag); break; }
//        else if (n == 2) { obj = instance_create(xpos+8, ypos+11, oRopePile); break; }
//        else if (n == 3) { obj = instance_create(xpos+8, ypos+10, oParaPickup); break; }
//    }
//}

//if (obj)
//{
//    obj.forSale = true;
//    if (global.currLevel > 2)
//    {
//        with obj
//        {
//            cost += (cost/100)*10*(global.currLevel-2);
//            if (shopDesc == "") buyMessage = "A " + string_upper(type) + " FOR $" + string(cost) + ".";
//            else buyMessage = shopDesc + " FOR $" + string(cost) + ".";
//        }
//    }
//}

//#define scrGenerateItem
//// scrGenerateItem(x, y, setType)
////
//// Generate an item at (x,y).
////

///**********************************************************************************
//    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
//    This file is part of Spelunky.

//    You can redistribute and/or modify Spelunky, including its source code, under
//    the terms of the Spelunky User License.

//    Spelunky is distributed in the hope that it will be entertaining and useful,
//    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

//    The Spelunky User License should be available in "Game Information", which
//    can be found in the Resource Explorer, or as an external file called COPYING.
//    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
//***********************************************************************************/

//if (argument2 == 0) // Crate Set
//{
//    if (rand(1,500) == 1) obj = instance_create(argument0, argument1, oJetpack);
//    else if (rand(1,200) == 1) obj = instance_create(argument0, argument1, oCapePickup);
//    else if (rand(1,100) == 1) obj = instance_create(argument0, argument1, oShotgun);
//    else if (rand(1,100) == 1) obj = instance_create(argument0, argument1, oMattock);
//    else if (rand(1,100) == 1) obj = instance_create(argument0, argument1, oTeleporter);
//    else if (rand(1,90) == 1) obj = instance_create(argument0, argument1, oGloves);
//    else if (rand(1,90) == 1) obj = instance_create(argument0, argument1, oSpectacles);
//    else if (rand(1,80) == 1) obj = instance_create(argument0, argument1, oWebCannon);
//    else if (rand(1,80) == 1) obj = instance_create(argument0, argument1, oPistol);
//    else if (rand(1,80) == 1) obj = instance_create(argument0, argument1, oMitt);
//    else if (rand(1,60) == 1) obj = instance_create(argument0, argument1, oPaste);
//    else if (rand(1,60) == 1) obj = instance_create(argument0, argument1, oSpringShoes);
//    else if (rand(1,60) == 1) obj = instance_create(argument0, argument1, oSpikeShoes);
//    else if (rand(1,60) == 1) obj = instance_create(argument0, argument1, oMachete);
//    else if (rand(1,40) == 1) obj = instance_create(argument0, argument1, oBombBox);
//    else if (rand(1,40) == 1) obj = instance_create(argument0, argument1, oBow);
//    else if (rand(1,20) == 1) obj = instance_create(argument0, argument1, oCompass);
//    else if (rand(1,10) == 1) obj = instance_create(argument0, argument1, oParaPickup);
//    else obj = instance_create(argument0, argument1, oRopePile);
//    obj.cost = 0;
//    obj.forSale = false;
//}
//else if (argument2 == 1) // High End Set
//{
//    if (rand(1,40) == 1) obj = instance_create(argument0, argument1, oJetpack);
//    else if (rand(1,25) == 1) obj = instance_create(argument0, argument1, oCapePickup);
//    else if (rand(1,20) == 1) obj = instance_create(argument0, argument1, oShotgun);
//    else if (rand(1,10) == 1) obj = instance_create(argument0, argument1, oGloves);
//    else if (rand(1,10) == 1) obj = instance_create(argument0, argument1, oTeleporter);
//    else if (rand(1,8) == 1) obj = instance_create(argument0, argument1, oMattock);
//    else if (rand(1,8) == 1) obj = instance_create(argument0, argument1, oPaste);
//    else if (rand(1,8) == 1) obj = instance_create(argument0, argument1, oSpringShoes);
//    else if (rand(1,8) == 1) obj = instance_create(argument0, argument1, oSpikeShoes);
//    else if (rand(1,8) == 1) obj = instance_create(argument0, argument1, oCompass);
//    else if (rand(1,8) == 1) obj = instance_create(argument0, argument1, oPistol);
//    else if (rand(1,8) == 1) obj = instance_create(argument0, argument1, oMachete);
//    else obj = instance_create(argument0, argument1, oBombBox);
//}
//else if (argument2 == 2) // Underground Set
//{
//    switch(rand(0,18))
//    {
//        case 0: { obj = instance_create(argument0, argument1-2, oJetpack); break; }
//        case 1: { obj = instance_create(argument0, argument1, oCapePickup); break; }
//        case 2: { obj = instance_create(argument0, argument1, oShotgun); break; }
//        case 3: { obj = instance_create(argument0, argument1, oMattock); break; }
//        case 4: { obj = instance_create(argument0, argument1+3, oTeleporter); break; }
//        case 5: { obj = instance_create(argument0, argument1-1, oGloves); break; }
//        case 6: { obj = instance_create(argument0, argument1, oSpectacles); break; }
//        case 7: { obj = instance_create(argument0-2, argument1, oWebCannon); break; }
//        case 8: { obj = instance_create(argument0, argument1, oPistol); break; }
//        case 9: { obj = instance_create(argument0, argument1-1, oMitt); break; }
//        case 10: { obj = instance_create(argument0, argument1, oPaste); break; }
//        case 11: { obj = instance_create(argument0, argument1, oSpringShoes); break; }
//        case 12: { obj = instance_create(argument0, argument1, oSpikeShoes); break; }
//        case 13: { obj = instance_create(argument0, argument1, oMachete); break; }
//        case 14: { obj = instance_create(argument0, argument1-2, oBombBox); break; }
//        case 15: { obj = instance_create(argument0, argument1, oBow); break; }
//        case 16: { obj = instance_create(argument0, argument1, oCompass); break; }
//        case 17: { obj = instance_create(argument0, argument1, oParaPickup); break; }
//        case 18: { obj = instance_create(argument0, argument1, oRopePile); break; }
//    }
//    obj.cost = 0;
//    obj.forSale = false;
//}

