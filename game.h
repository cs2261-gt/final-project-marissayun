// villager struct
typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int aniState;
    int curFrame;
    int numFrames;
    int aniCounter;
    int active;
} VILLAGER;

// spider struct
typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int aniState;
    int curFrame;
    int numFrames;
    int aniCounter;
    int active;
} SPIDER;

//variables
extern int spidersCaught;
extern int attacks;
extern int lives;
extern int loseGame;

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