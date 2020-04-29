// villager struct
typedef struct {
	int row;
	int col;
	int width;
    int height;
    int prevAniState;
    int aniState;
    int curFrame;
    int numFrames;
    int aniCounter;
    int rdel;
    int gravity;
} VILLAGER;

// spider struct
typedef struct {
	int row;
	int col;
    int cdel;
	int width;
    int height;
    int aniState;
    int curFrame;
    int numFrames;
    int aniCounter;
    int active;
} SPIDER;

// lives struct
typedef struct {
	int row;
	int col;
	int width;
    int height;
    int active;
    int aniState;
    int curFrame;
} LIVES;

// CAUGHT struct
typedef struct {
	int row;
	int col;
	int width;
    int height;
    int active;
    int aniState;
    int curFrame;
} CAUGHT;

//variables
extern int spidersCaught;
extern int attacks;
extern int numLives;
extern int loseGame;
extern int winGame;

//constants
#define LIVESCOUNT 3
#define MAXCAUGHT 5

//game prototypes
void initializeGame();
void updateGame();
void drawGame();
//villager head prototypes
void initializeVillager();
void updateVillager();
//spider prototypes
void initializeSpider();
void updateSpider();
//lives prototypes
void initializeLives();
//caught prototypes
void initializeCaught();