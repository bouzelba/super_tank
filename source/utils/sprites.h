// ***************************************************************************
// sprites
// ***************************************************************************

#pragma once
#include "vector.h"

// ---------------------------------------------------------------------------
// data structure describing a sprite

struct sprite
{
	int y;								// y coordinate
	int x;								// x coordinate
	unsigned int angle;					// rotational angle (lower 6 bits)
	unsigned int scale;					// scale factor
	const struct vector_list_t* shape;	// pointer to vector list
};

// ---------------------------------------------------------------------------

void draw_sprite(const struct sprite* s);

// ***************************************************************************
// end of file
// ***************************************************************************
