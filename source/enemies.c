#include <vectrex.h>

#include "utils\sprites.h"
#include "utils\vector.h"

struct packet_t enemie0_vectors[] =
{
	{MOVE,{ 30,	 2}},//0.       	
	{DRAW,{  0,	-4}},//1.		
	{DRAW,{-30,	 0}},//2.	
	{DRAW,{  0, -8}},//3.
	{DRAW,{ 10,	 0}},//4.
	{DRAW,{  5,	-2}},//5.
	{DRAW,{  0, -5}},//6.
	{DRAW,{ -5, -3}},//7.
	{DRAW,{-40,  0}},//8.
	{DRAW,{-10,  3}},//9.
	{DRAW,{  0, 34}},//10.
	{DRAW,{ 10,	 3}},//11.
	{DRAW,{ 40,  0}},//12.
	{DRAW,{  5, -3}},//13.
	{DRAW,{  0, -5}},//14.
	{DRAW,{ -5,	-2}},//15.
	{DRAW,{ -10, 0}},//16.
	{DRAW,{  0,	-8}},//17.
	{DRAW,{ 30,	 0}},//18.
	{STOP,{  0,  0}}
};

struct vector_list_t enemie0_shape = 
{
	.type = PACKET,	// type of player vector list
	.size = 20,	// length of player ector list
	.vectors =&enemie0_vectors		// generic pointer to array of the player vectors
};

struct sprite enemie0 = 
{
	.y = 0,
	.x = 0,
	.angle = 32,
	.scale = 30,
	.shape = &enemie0_shape
}; 

struct vector_t enemie1_vectors[] =
{
	{0,0},
	{0,0},
	{0,0},
	{0,0}
};

struct vector_list_t enemie1_shape = 
{
	.type = DIFFY,	// type of player vector list
	.size = 9,	// length of player ector list
	.vectors =&enemie1_vectors		// generic pointer to array of the player vectors
};

struct sprite enemie1 = 
{
	.y = 0,
	.x = 0,
	.angle = 0,
	.scale = 35,
	.shape = &enemie1_shape
}; 

struct vector_t enemie2_vectors[] =
{
	{0,0},
	{0,0},
	{0,0},
	{0,0}
};

struct vector_list_t enemie2_shape = 
{
	.type = DIFFY,	// type of player vector list
	.size = 9,	// length of player ector list
	.vectors =&enemie2_vectors		// generic pointer to array of the player vectors
};

struct sprite enemie2 = 
{
	.y = 0,
	.x = 0,
	.angle = 0,
	.scale = 75,
	.shape = &enemie2_shape
}; 

struct sprite  * enemies[] = 
{
	&enemie0,
	&enemie1,
	&enemie2
}; 

void init_enemies()
{
	enemies[0]->x = (int) Random();
	enemies[0]->y = (int) Random();
}

void move_enemies()
{
	enemies[0]->x += 2;
	//~ enemies[0]->y += 0;
}

void draw_enemies()
{
	draw_sprite(enemies[0]);
}
