// ***************************************************************************
// utility functions
// ***************************************************************************

#pragma once
#include <vectrex.h>

// ---------------------------------------------------------------------------
// reset vector beam to screen center

static inline void reset_beam()
{
	Reset0Ref();
}

// ---------------------------------------------------------------------------
// move vector beam 

static inline void move_beam(int y, int x, unsigned int scale)
{
	VIA_t1_cnt_lo = scale;
	Moveto_d(y, x);
}

// ---------------------------------------------------------------------------
// wrapper for bios random byte value

static inline unsigned int random_byte()
{
	return Random();
}

// ---------------------------------------------------------------------------
// workaround: gcc6809 cannot handle shift by non-constant int (long int works)

static inline unsigned int shift_left(unsigned int operand, unsigned int bits)
{ 
	return (unsigned int) ((long unsigned int) operand << (long unsigned int) bits);
}

static inline unsigned int shift_right(unsigned int operand, unsigned int bits)
{ 
	return (unsigned int) ((long unsigned int) operand >> (long unsigned int) bits);
}

static inline int rotate_left(int operand, unsigned int bits)
{ 
	return (int) ((long int) operand << (long unsigned int) bits);
}

static inline int roate_right(int operand, unsigned int bits)
{ 
	return (int) ((long int) operand >> (long unsigned int) bits);
}

// ---------------------------------------------------------------------------
// workaround: gcc6809 cannot handle division by non-constant int (long int works)

static inline unsigned int divu(unsigned int dividend, unsigned int divisor)
{ 
	return (unsigned int) ((long unsigned int) dividend / (long unsigned int) divisor);
}

static inline int divs(int dividend, int divisor)
{ 
	return (int) ((long int) dividend / (long int) divisor);
}

// ***************************************************************************
// end of file
// ***************************************************************************
