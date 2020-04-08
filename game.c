#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "furtherTrees.h"
#include "trees.h"

//variables
VILLAGER villager;
SPIDER spider;
int spidersCaught;
int attacks;
int lives;
int spiderTimer;
int loseGame;

// Horizontal Offset
unsigned short hOff;

OBJ_ATTR shadowOAM[128];

void initializeGame() {
    
    //load spritesheet palette and tiles
    //initialize backgrounds

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
    
    hOff = 0;

    // initialize variables
    spidersCaught = 0;
    attacks = 0;
    lives = 3;

    loseGame = 0;

    initializeVillager();
    initializeSpider();
}

void initializeVillager() {

}

void initializeSpider() {

}

// update game each frame
void updateGame() {
    // Scroll the background
    if(BUTTON_HELD(BUTTON_LEFT)) {
        hOff--;
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        hOff++;
    }

    waitForVBlank();

    // change to implement parallax
    REG_BG0HOFF = hOff; 
    REG_BG1HOFF = hOff / 2; 

    // updateVillager();
    // updateSpider();
}

void drawGame() {

}

void updateVillager() {

}

void updateSpider() {

}



