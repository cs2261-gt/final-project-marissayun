// villager struct
typedef struct {
	int row;
	int col;
    int cdel;
	int width;
    int height;
    int prevAniState;
    int aniState;
    int curFrame;
    int numFrames;
    int aniCounter;
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

//variables
extern int spidersCaught;
extern int attacks;
extern int lives;
extern int loseGame;
extern int winGame;
extern SOUND soundA;
extern SOUND soundB;

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
void spawnSpider();