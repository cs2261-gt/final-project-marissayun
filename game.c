#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "tempspritesheet.h"

// sounds
#include "catch.h"
#include "footsteps.h"

//variables
VILLAGER villager;
SPIDER spider;
LIVES lives[LIVESCOUNT];
CAUGHT caught[MAXCAUGHT];
int spidersCaught;
int attacks;
int numLives;
int spiderTimer;
int loseGame;
int winGame;
int frameCounter;
int jump;
// States used for villager.aniState
// SPRITERIGHT is default walking right (since can only move right)
// SPRITENET is one anistate where the net is making contact with the ground
// Idle does not have an actual image associated with it;
// Whenever villager is idle, just show whatever state villager was before (prevAniState)
enum {SPRITERIGHT, SPRITENET, SPRITEJUMP, SPRITEIDLE};

// gravity
// #define SHIFTUP(num) ((num) << 8)
#define SHIFTDOWN(num) ((num) >> 8)

// Horizontal Offset
unsigned short hOff;

unsigned short vOff;

//random seed
int seed;

OBJ_ATTR shadowOAM[128];

void initializeGame() {
    
    //load spritesheet palette and tiles
    //initialize backgrounds 
    // NOTE: for now these backgrounds are temporary! 
    // will work on original art for next milestone

    // load the spritesheet Tiles and Pal into THEIR desired spaces in memory
    DMANow(3, tempspritesheetPal, SPRITEPALETTE, tempspritesheetPalLen / 2);
    DMANow(3, tempspritesheetTiles, &CHARBLOCK[4], tempspritesheetTilesLen / 2);
    
    hOff = 0;
    vOff = 0;
    jump = 0;

    // initialize variables
    spidersCaught = 0;
    attacks = 0;
    numLives = 3;
    spiderTimer = 0;
    seed = 0;

    loseGame = 0;
    winGame = 0;

    frameCounter = 0;

    initializeVillager();
    initializeSpider();
    initializeLives();
    initializeCaught();
}

void initializeVillager() {
    villager.width = 64;
    villager.height = 64;
    villager.col = 0 + (villager.width / 2);
	villager.row = SCREENHEIGHT - (villager.height / 2) - 50; // aligned with ground
    villager.aniCounter = 0; 
    villager.curFrame = 0;
    villager.numFrames = 3; // 3 animation frames
	villager.aniState = SPRITERIGHT; 
    villager.rdel = 0;
    villager.gravity = 0;
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
	spider.aniState = 6; // col
    spider.active = 0;
}

void initializeLives() {
    for (int i = 0; i < LIVESCOUNT; i++) {
        lives[i].width = 16;
        lives[i].height = 16;
        lives[i].col = 60 - (20 * i);
        lives[i].row = 144;
        lives[i].active = 1;
        lives[i].curFrame = 0; // row
        lives[i].aniState = 14; // col
    }
}

void initializeCaught() {
    for (int i = 0; i < MAXCAUGHT; i++) {
        caught[i].width = 16;
        caught[i].height = 16;
        caught[i].col = 135 + (20 * i);
        caught[i].row = 10;
        caught[i].active = 0;
        caught[i].curFrame = 0; // row
        caught[i].aniState = 15; // col
    }
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
    
}

void drawGame() {
    // set up villager sprite attributes
    shadowOAM[0].attr0 = villager.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = villager.col | ATTR1_LARGE;
    shadowOAM[0].attr2 = ATTR2_TILEID(villager.aniState * 8, villager.curFrame * 8);

    // set up spider sprite attributes
    shadowOAM[5].attr0 = spider.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[5].attr1 = spider.col | ATTR1_MEDIUM;
    shadowOAM[5].attr2 = ATTR2_TILEID(spider.aniState * 4, spider.curFrame * 4);

    // set up lives sprite attributes
    for (int i = 0; i < LIVESCOUNT; i++) {
        if (lives[i].active) {
            shadowOAM[8 + i].attr0 = lives[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[8 + i].attr1 = lives[i].col | ATTR1_SMALL;
            shadowOAM[8 + i].attr2 = ATTR2_TILEID(lives[i].aniState * 2, lives[i].curFrame * 2);
        } else {
            shadowOAM[8 + i].attr0 = ATTR0_HIDE;
        }
    } 

    // set up caught sprite attributes
    for (int i = 0; i < MAXCAUGHT; i++) {
        if (caught[i].active) {
            shadowOAM[11 + i].attr0 = caught[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[11 + i].attr1 = caught[i].col | ATTR1_SMALL;
            shadowOAM[11 + i].attr2 = ATTR2_TILEID(caught[i].aniState * 2, caught[i].curFrame * 2);
        } else {
            shadowOAM[11 + i].attr0 = ATTR0_HIDE;
        }
    } 
    
}

void updateVillager() {
    // set previous state to current state (if not idle)
	// then reset villager's state to idle
    if (villager.aniState != SPRITEIDLE) {
        villager.prevAniState = villager.aniState;
        villager.aniState = SPRITEIDLE;
    }

    // Change the animation frame every 20 frames of gameplay
    if(villager.aniCounter % 15 == 0) {
        villager.curFrame = (villager.curFrame + 1) % villager.numFrames;
    }

    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        villager.aniState = SPRITERIGHT;
        // scroll the background
        hOff++;
    }

    if (BUTTON_PRESSED(BUTTON_A)) {
        villager.aniState = SPRITENET;
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        villager.rdel = -10;
        villager.gravity = SHIFTDOWN(260);
        villager.row--;
        villager.aniState = SPRITEJUMP;
        jump = 1;
    }

    if (villager.row == (SCREENHEIGHT - (villager.height / 2) - 50)) {
        jump = 0;
    }

    if (villager.row < (SCREENHEIGHT - (villager.height / 2) - 50) 
        && villager.row >= 0 - villager.height) {
        villager.rdel += villager.gravity;
        villager.row += villager.rdel;
        if (villager.row < 0) {
            villager.row = 0;
        }
    } else {
        villager.row = (SCREENHEIGHT - (villager.height / 2) - 50);
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

void updateSpider() {

    // Change the animation frame every 15 frames of gameplay
    if (spider.aniCounter % 15 == 0) {
        spider.curFrame = (spider.curFrame + 1) % spider.numFrames;
    }
    spider.aniCounter++;

	// While active, check for collision; otherwise, move left
	if (spider.active) {
        // CASE 1: spider is caught
        // the spider is caught if it has a collision with the villager sprite 
        // while in the net state
        // (so the entire width, includes empty area where net will be)
        // (which should match up with the timing of the spider under the net)
        if (collision(spider.col, spider.row, spider.width, spider.height,
            villager.col, villager.row, villager.width, villager.height)
            && villager.aniState == SPRITENET) { 

            // catch sound
            //playSoundB(catch, 0);

            // spider is inactive
            spider.active = 0;

            // update the score
            spidersCaught++;

            // set a caught sprite as active
            for (int i = 0; i < MAXCAUGHT; i++) {
                if (!caught[i].active) {
                    caught[i].active = 1;
                    break;
                }
            }

        // CASE 2: spider attacks villager
        // the spider has a collision with the villager 
        // but not the "villager" sprite itself 
        // (so half of the villager width, doesn't include net area)
        // doesn't matter what state since it it reaches this point
        // an attack will happen (and the timing for the net has passed)
        } else if (collision(spider.col, spider.row, spider.width, spider.height,
            villager.col, villager.row, villager.width / 2, villager.height)) {

            // spider is inactive
            spider.active = 0;

            // resets score to 0 after an attack
            spidersCaught = 0;

            attacks++;

            // lose a life 
            numLives--;
            // set a life inactive
            for (int i = 0; i < LIVESCOUNT; i++) {
                if (lives[i].active) {
                    lives[i].active = 0;
                    break;
                }
            }
            // set the all caught sprites to be inactive since score is reset
            for (int i = 0; i < MAXCAUGHT; i++) {
                if (caught[i].active) {
                    caught[i].active = 0;
                }
            }

            // update attacks & check for loseGame
            if (attacks == 3) { 
                numLives = 0;
                attacks = 0; // reset attacks for next playthrough
                loseGame = 1;
            } 

        // CASE 3: no collision yet, spider moving left
        } else {
            // move spider left
            spider.col -= (rand() % 3 / 2) + spider.cdel; // spider random speed

            if (spider.col <= 0) {
                spider.active = 0;
            }
        }
        
	} 

    if (!spider.active) {
        // if not active, make it hidden and reactivate it after 200 frames
        spider.col = SCREENWIDTH; // hide it again
        spider.active = 1;
    }

    if (spidersCaught == 5) {
        // need this winGame variable because otherwise,
        // will not show the net catching animation for 5th spider caught
        // and will go directly to win screen
        spidersCaught = 0; // reset spidersCaught to 0 for when game is played again
        winGame = 1;
    }

}






