
//{{BLOCK(pausebg)

//======================================================================
//
//	pausebg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 367 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 11744 + 2048 = 14304
//
//	Time-stamp: 2020-04-19, 02:17:44
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSEBG_H
#define GRIT_PAUSEBG_H

#define pausebgTilesLen 11744
extern const unsigned short pausebgTiles[5872];

#define pausebgMapLen 2048
extern const unsigned short pausebgMap[1024];

#define pausebgPalLen 512
extern const unsigned short pausebgPal[256];

#endif // GRIT_PAUSEBG_H

//}}BLOCK(pausebg)
