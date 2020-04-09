// for rand
#include <stdlib.h>
#include <stdio.h>

#include "myLib.h"
#include "startbg.h"
#include "pausebg.h"
#include "winbg.h"
#include "losebg.h"
#include "gamebg.h"
#include "game.h"

//prototypes
void initialize();

//state prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum {START, PAUSE, GAME, WIN, LOSE};
int state;

//buttons
unsigned short buttons;
unsigned short oldButtons;

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

		//state machine
		switch(state) {
            case START:
                start();
                break;
            case PAUSE:
                pause();
                break;
            case GAME:
                game();
                break;
            case WIN:
                win();
                break;
			case LOSE:
				lose();
				break;
        }

        //Copy the shadowOAM into the OAM
		DMANow(3, shadowOAM, OAM, 128*4);

	}

	return 0;
	
}

// Initialize the game on first launch
void initialize() {

    // set up display control register and enable sprites
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;

    // set up 0 control register
	REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // hide all sprites
    hideSprites();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

    buttons = BUTTONS;

    goToStart();
}

void goToStart() {
	// load the start tile palette
	DMANow(3, startbgPal, PALETTE, 256);
	
	//load start tiles into charblock
	DMANow(3, startbgTiles, &CHARBLOCK[0], 752);

	//load start map to screenblock
	DMANow(3, startbgMap, &SCREENBLOCK[31], 1024);

	// hide all the sprites
    // any time you hide sprites, you must waitForVBlank and then DMA the shadowOAM into the OAM
    // this is because hidesprites modifies the shadowOAM and not the real OAM
	hideSprites();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

	state = START;

}


void start() {

	if (BUTTON_PRESSED(BUTTON_START)) {

        // start the game!
		initializeGame();
		goToGame();
	}
}

void goToGame() {
	state = GAME;
}

void game() {

	updateGame();
	drawGame();

	waitForVBlank();
    //copy the shadowOAM into the OAM
    DMANow(3, shadowOAM, OAM, 128*4);

	//switching states
	if (BUTTON_PRESSED(BUTTON_START)) {
		goToPause();
	} else if (spidersCaught == 5) { // win if you catch 5 spiders
		spidersCaught = 0; // reset spidersCaught to 0 for when game is played again
        goToWin();
	} else if (loseGame) { // if lose all of your 3 lives, you lose
		loseGame = 0; // reset loseGame to 0 for when game is played again
        goToLose();
	}

}

void goToPause() {
	// hide all the sprites
    // any time you hide sprites, you must waitForVBlank and then DMA the shadowOAM into the OAM
    // this is because hidesprites modifies the shadowOAM and not the real OAM

	hideSprites();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

	// load the pause tile palette
	DMANow(3, pausebgPal, PALETTE, 256);

	//load pause tiles into charblock
	DMANow(3, pausebgTiles, &CHARBLOCK[0], 688);

	//load pause map to screenblock
	DMANow(3, pausebgMap, &SCREENBLOCK[31], 1024);

	state = PAUSE;
}

void pause() {

	if (BUTTON_PRESSED(BUTTON_START)) {
		goToGame();
	}
}


void goToWin() {
	//hide all the sprites
    // any time you hide sprites, you must waitForVBlank and then DMA the shadowOAM into the OAM
    // this is because hidesprites modifies the shadowOAM and not the real OAM
	hideSprites();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

	// load the win tile palette
	DMANow(3, winbgPal, PALETTE, 256);

	//load win tiles into charblock
	DMANow(3, winbgTiles, &CHARBLOCK[0], 1808);

	//load win map to screenblock
	DMANow(3, winbgMap, &SCREENBLOCK[31], 1024);

	state = WIN;
}

void win() {
	if (BUTTON_PRESSED(BUTTON_START)) {
		goToStart();
	}
}

void goToLose() {
	// hide all the sprites
    // any time you hide sprites, you must waitForVBlank and then DMA the shadowOAM into the OAM
    // this is because hidesprites modifies the shadowOAM and not the real OAM
	hideSprites();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

	// load the lose tile palette
	DMANow(3, losebgPal, PALETTE, 256);

	//load win tiles into charblock
	DMANow(3, losebgTiles, &CHARBLOCK[0], 2592);

	//load win map to screenblock
	DMANow(3, losebgMap, &SCREENBLOCK[31], 1024);

	state = LOSE;
}

void lose() {
	if (BUTTON_PRESSED(BUTTON_START)) {
		goToStart();
	}
}