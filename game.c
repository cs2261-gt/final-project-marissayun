#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "furtherTrees.h"
#include "trees.h"
#include "tempspritesheet.h"

//variables
VILLAGER villager;
SPIDER spider;
int spidersCaught;
int attacks;
int lives;
int spiderTimer;
int loseGame;
// States used for villager.aniState
// SPRITERIGHT is default walking right (since can only move right)
// SPRITENET is one anistate where the net is making contact with the ground
// Idle does not have an actual image associated with it;
// Whenever villager is idle, just show whatever state villager was before (prevAniState)
enum {SPRITERIGHT, SPRITENET, SPRITEIDLE};

// Horizontal Offset
unsigned short hOff;

//random seed
int seed;

OBJ_ATTR shadowOAM[128];

void initializeGame() {
    
    //load spritesheet palette and tiles
    //initialize backgrounds 
    // NOTE: for now these backgrounds are temporary! 
    // will work on original art for next milestone

    // load tile palette
    DMANow(3, furtherTreesPal, PALETTE, 256);
    // set up bg 1 control register
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    // load furtherTrees tiles to charblock
    DMANow(3, furtherTreesTiles, &CHARBLOCK[0], furtherTreesTilesLen / 2);
    // load furtherTrees map to screenblock
    DMANow(3, furtherTreesMap, &SCREENBLOCK[28], furtherTreesMapLen / 2);
    // set up bg 0 control register
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_4BPP;
    // load trees tiles to charblock
    DMANow(3, treesTiles, &CHARBLOCK[1], treesTilesLen / 2);
    // load trees map to screenblock
    DMANow(3, treesMap, &SCREENBLOCK[30], treesMapLen / 2);

    // load the spritesheet Tiles and Pal into THEIR desired spaces in memory
    DMANow(3, tempspritesheetPal, SPRITEPALETTE, tempspritesheetPalLen / 2);
    DMANow(3, tempspritesheetTiles, &CHARBLOCK[4], tempspritesheetTilesLen / 2);
    
    hOff = 0;

    // initialize variables
    spidersCaught = 0;
    attacks = 0;
    lives = 3;
    spiderTimer = 0;
    seed = 0;

    loseGame = 0;

    initializeVillager();
    initializeSpider();
}

void initializeVillager() {
    villager.width = 64;
    villager.height = 64;
    villager.cdel = 1;
    villager.col = 0 + (villager.width / 2);
	villager.row = SCREENHEIGHT - (villager.height / 2) - 50; // aligned with ground
    villager.aniCounter = 0; 
    villager.curFrame = 0;
    villager.numFrames = 3; // 3 animation frames
	villager.aniState = SPRITERIGHT; 
}

void initializeSpider() {
    spider.width = 32;
    spider.height = 32;
    spider.cdel = 1;
    spider.col = SCREENWIDTH; // not visible - just off of the right wall of the screen
	spider.row = SCREENHEIGHT - (villager.height / 2) - 50 + spider.height; // aligned with ground
    spider.aniCounter = 0;
    spider.curFrame = 0; // row
    spider.numFrames = 3; // 3 animation frames
	spider.aniState = 4; // col
    spider.active = 0;
}

// update game each frame
void updateGame() {
    waitForVBlank();

    // change to implement parallax
    REG_BG0HOFF = hOff; 
    REG_BG1HOFF = hOff / 2; 

    updateVillager();
    updateSpider();

    seed++;
    srand(seed);

    if (spiderTimer >= (rand() % 3) * 5000) { // spider random spawn (but doesn't work correctly right now)

        spiderTimer = 0;
		spawnSpider();
		
	}

	spiderTimer++;
}

void drawGame() {
    // set up villager sprite attributes
    shadowOAM[0].attr0 = villager.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = villager.col | ATTR1_LARGE;
    shadowOAM[0].attr2 = ATTR2_TILEID(villager.aniState * 8, villager.curFrame * 8);

    //set up spider sprite attributes
    shadowOAM[4].attr0 = spider.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[4].attr1 = spider.col | ATTR1_MEDIUM;
    shadowOAM[4].attr2 = ATTR2_TILEID(spider.aniState * 4, spider.curFrame * 4);
}

void updateVillager() {
    // set previous state to current state (if not idle)
	// then reset villager's state to idle
    if (villager.aniState != SPRITEIDLE) {
        villager.prevAniState = villager.aniState;
        villager.aniState = SPRITEIDLE;
    }

    // Change the animation frame every 20 frames of gameplay
    if(villager.aniCounter % 20 == 0) {
        villager.curFrame = (villager.curFrame + 1) % villager.numFrames;
    }

    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        villager.aniState = SPRITERIGHT;
        // scroll the background
        hOff++;
    }

    if(BUTTON_PRESSED(BUTTON_A)) {
        villager.aniState = SPRITENET;
    }

    // If the villager aniState is idle (thus no key is held), 
    // we want the frame to be villager standing (frame 0)
    // in whatever direction villager was facing (set aniState to prevAniState)
    // Else, if villager aniState is not idle, we want to increment aniCounter
    if (villager.aniState == SPRITEIDLE) {
        villager.curFrame = 0;
        villager.aniState = villager.prevAniState;
    } else {
        villager.aniCounter++;
    }

}

void spawnSpider() {
    spider.active = 1;
}

void updateSpider() {

    // Change the animation frame every 15 frames of gameplay
    if (spider.aniCounter % 15 == 0) {
        spider.curFrame = (spider.curFrame + 1) % spider.numFrames;
    }
    spider.aniCounter++;

	// While active, check for collision; otherwise, move left
	if (spider.active) {
        // CASE 1: spider is caught
        // the spider is caught if it has a collision with the MIDDLE of the "blue zone" (see bitmap) 
        // while the villager is in the SPRITENET anistate 
        // (which should match up with the timing of the spider under the net)
        if (collision(spider.col, spider.row, spider.width, spider.height,
            villager.col, villager.row, villager.width * (3/4), villager.height)
            && villager.aniState == SPRITENET) { 

            // spider is inactive
            spider.active = 0;

            // update the score
            spidersCaught++;

        // CASE 2: spider attacks villager
        // the spider has a collision with the villager 
        // but not the villager sprite itself (since that includes the blue zone)
        // but the NON-blue zone (where the villager actually appears to be left of the blue zone)
        // (basically the border of the nonblue and blue for the villager sprite) (see bitmap)
        } else if (collision(spider.col, spider.row, spider.width, spider.height,
            villager.col, villager.row, villager.width / 2, villager.height)
            && (villager.aniState == SPRITERIGHT || villager.aniState == SPRITEIDLE)) {

            // spider is inactive
            spider.active = 0;

            // update attacks & check for loseGame
            if (attacks == 3) { 
                lives = 0;
                attacks = 0; // reset attacks for next playthrough
                loseGame = 1;
            } else {
                attacks++;
                lives--;
            }

            // reset score to 0 after an attack
            spidersCaught = 0;

        // CASE 3: no collision yet, spider moving left
        } else {
            // move spider left
            spider.col -= (rand() % 3 / 2) + spider.cdel; // spider random speed
        }

	} else {
        // if not active, make it hidden and reactivate it
        spider.col = SCREENWIDTH; // hide it again
        spider.active = 1;
    }
}





