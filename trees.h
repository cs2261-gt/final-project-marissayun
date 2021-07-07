
//{{BLOCK(trees)

//======================================================================
//
//	trees, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 867 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 27744 + 4096 = 32352
//
//	Time-stamp: 2020-04-18, 00:35:04
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TREES_H
#define GRIT_TREES_H

#define treesTilesLen 27744
extern const unsigned short treesTiles[13872];

#define treesMapLen 4096
extern const unsigned short treesMap[2048];

#define treesPalLen 512
extern const unsigned short treesPal[256];

#endif // GRIT_TREES_H

//}}BLOCK(trees)
