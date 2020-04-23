// M04 Comments
// Finished: game mechanics, art/backgrounds (but may end up changing/improving some art
// if time permits)
// Needs to be added: cheat, possibly more sounds/music, 
// a visual representation of the score and lives left
// attempted to add catching sound or footsteps as soundB but ran into some issues so
// will either leave out or add in for the final submission
// Bugs: none that I have found
// How to play: 
// Start game: press START from start menu to begin game
// Pause: press SELECT from game screen
// Instructions: press SELECT from start screen, press again to go back to start screen
// Once in the game...
// Move right (using right arrow) 
// Objective is to catch tarantulas (by pressing A! this should trigger
// a villager state where the net is now on the ground)
// Timing for net catching and attacks should work now 
// Win: catch 5 spiders (consecutively, score is reset if tarantula attacks you)
// Lose: attacked by tarantula 3 times (doesn't need to be consecutive)

// for rand
#include <stdlib.h>
#include <stdio.h>

#include "myLib.h"
#include "game.h"

// backgrounds
#include "startbg.h"
#include "instructions.h"
#include "pausebg.h"
#include "winbg.h"
#include "losebg.h"
#include "island.h"
#include "trees.h"

// songs/sounds
#include "airport.h"
#include "islandnight.h"
#include "prologue.h"

//prototypes
void initialize();

//state prototypes
void goToStart();
void start();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// states
enum {START, INSTRUCTIONS, PAUSE, GAME, WIN, LOSE};
int state;

// buttons
unsigned short buttons;
unsigned short oldButtons;

// sounds
SOUND soundA;
SOUND soundB;

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
			case INSTRUCTIONS:
				instructions();
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

	// call the two setup functions for sounds and interrupts.
	setupSounds();
	setupInterrupts();

    goToStart();
}

void goToStart() {

	REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE; 
	REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	REG_BG0HOFF = 0;

	// load the start tile palette
	DMANow(3, startbgPal, PALETTE, startbgPalLen / 2);
	
	//load start tiles into charblock
	DMANow(3, startbgTiles, &CHARBLOCK[0], startbgTilesLen / 2);

	//load start map to screenblock
	DMANow(3, startbgMap, &SCREENBLOCK[31], startbgMapLen / 2);

	// hide all the sprites
    // any time you hide sprites, you must waitForVBlank and then DMA the shadowOAM into the OAM
    // this is because hidesprites modifies the shadowOAM and not the real OAM
	hideSprites();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

	playSoundA(airport, AIRPORTLEN, 1);

	state = START;

}


void start() {

	if (BUTTON_PRESSED(BUTTON_START)) {

        // start the game!
		stopSound();
		playSoundA(islandnight, ISLANDNIGHTLEN, 1); 

		initializeGame();
		goToGame();
	}

	if (BUTTON_PRESSED(BUTTON_SELECT)) {
		goToInstructions();
	}
}

void goToInstructions() {

	REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE; 
	REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	REG_BG0HOFF = 0;

	// hide all the sprites
    // any time you hide sprites, you must waitForVBlank and then DMA the shadowOAM into the OAM
    // this is because hidesprites modifies the shadowOAM and not the real OAM

	hideSprites();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

	// load the pause tile palette
	DMANow(3, instructionsPal, PALETTE, instructionsPalLen / 2);

	//load pause tiles into charblock
	DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen / 2);

	//load pause map to screenblock
	DMANow(3, instructionsMap, &SCREENBLOCK[31], instructionsMapLen / 2);

	state = INSTRUCTIONS;
}

void instructions() {

	if (BUTTON_PRESSED(BUTTON_SELECT)) {
		goToStart();
	}
}

void goToGame() {
	REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;
    
    // load tile palette
    DMANow(3, islandPal, PALETTE, 256);
    // set up bg 1 control register
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    // load furtherTrees tiles to charblock
    DMANow(3, islandTiles, &CHARBLOCK[0], islandTilesLen / 2);
    // load furtherTrees map to screenblock
    DMANow(3, islandMap, &SCREENBLOCK[28], islandMapLen / 2);
    // set up bg 0 control register
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_4BPP;
    // load trees tiles to charblock
    DMANow(3, treesTiles, &CHARBLOCK[1], treesTilesLen / 2);
    // load trees map to screenblock
    DMANow(3, treesMap, &SCREENBLOCK[30], treesMapLen / 2);

	state = GAME;
}

void game() {

	updateGame();
	drawGame();

	waitForVBlank();
    //copy the shadowOAM into the OAM
    DMANow(3, shadowOAM, OAM, 128*4);

	//switching states
	if (BUTTON_PRESSED(BUTTON_SELECT)) {
		// Pause the music when transitioning from game to pause screen.
		pauseSound();

		goToPause();
	} else if (winGame) { // win if you catch 5 spiders
		stopSound();
		playSoundA(prologue, PROLOGUELEN, 1);
		winGame = 0; // reset winGame to 0 for when game is played again
        goToWin();
	} else if (loseGame) { // if lose all of your 3 lives, you lose
		stopSound();
		loseGame = 0; // reset loseGame to 0 for when game is played again
        goToLose();
	}

}

void goToPause() {

	REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE; 
	REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	REG_BG0HOFF = 0;

	// hide all the sprites
    // any time you hide sprites, you must waitForVBlank and then DMA the shadowOAM into the OAM
    // this is because hidesprites modifies the shadowOAM and not the real OAM

	hideSprites();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

	// load the pause tile palette
	DMANow(3, pausebgPal, PALETTE, pausebgPalLen / 2);

	//load pause tiles into charblock
	DMANow(3, pausebgTiles, &CHARBLOCK[0], pausebgTilesLen / 2);

	//load pause map to screenblock
	DMANow(3, pausebgMap, &SCREENBLOCK[31], pausebgMapLen / 2);

	state = PAUSE;
}

void pause() {

	if (BUTTON_PRESSED(BUTTON_START)) {
		// Unpause the music when transitioning from pause to game screen.
		unpauseSound();
		goToGame();
	}
}


void goToWin() {

	REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE; 
	REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	REG_BG0HOFF = 0;

	//hide all the sprites
    // any time you hide sprites, you must waitForVBlank and then DMA the shadowOAM into the OAM
    // this is because hidesprites modifies the shadowOAM and not the real OAM
	hideSprites();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

	// load the win tile palette
	DMANow(3, winbgPal, PALETTE, winbgPalLen / 2);

	//load win tiles into charblock
	DMANow(3, winbgTiles, &CHARBLOCK[0], winbgTilesLen / 2);

	//load win map to screenblock
	DMANow(3, winbgMap, &SCREENBLOCK[31], winbgMapLen / 2);

	state = WIN;
}

void win() {
	if (BUTTON_PRESSED(BUTTON_START)) {
		goToStart();
	}
}

void goToLose() {

	REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE; 
	REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	REG_BG0HOFF = 0;

	// hide all the sprites
    // any time you hide sprites, you must waitForVBlank and then DMA the shadowOAM into the OAM
    // this is because hidesprites modifies the shadowOAM and not the real OAM
	hideSprites();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

	// load the lose tile palette
	DMANow(3, losebgPal, PALETTE, losebgPalLen / 2);

	//load win tiles into charblock
	DMANow(3, losebgTiles, &CHARBLOCK[0], losebgTilesLen / 2);

	//load win map to screenblock
	DMANow(3, losebgMap, &SCREENBLOCK[31], losebgMapLen / 2);

	state = LOSE;
}

void lose() {
	if (BUTTON_PRESSED(BUTTON_START)) {
		goToStart();
	}
}