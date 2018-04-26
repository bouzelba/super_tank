#include <vectrex.h>

#include "utils\sprites.h"
#include "utils\print.h"
#include "utils\vector.h"

struct packet_t walls_vectors[] =
{
	{MOVE,{-80,	30}},//0.       	
	{DRAW,{  0,-60}},//1.		
	{DRAW,{-45,	 0}},//2.	
	{DRAW,{  0, 10}},//3.
	{DRAW,{ 35,	 0}},//4.
	{DRAW,{  0,	40}},//5.
	{DRAW,{-35,  0}},//6.
	{DRAW,{  0, 10}},//7.
	{DRAW,{ 45,  0}},//8.
	{MOVE,{-25,-20}},
	{DRAW,{  0, -5}},
	{DRAW,{  5, -5}},
	{DRAW,{ -5, -5}},
	{DRAW,{  0, -5}},
	{DRAW,{-20,  0}},
	{DRAW,{  0, 20}},	
	{DRAW,{ 20,  0}},	
	{DRAW,{  0,-20}},	
	{STOP,{  0,  0}}
};

struct vector_list_t walls_shape = 
{
	.type = PACKET,	// type of player vector list
	.size = 19,	// length of player ector list
	.vectors =&walls_vectors		// generic pointer to array of the player vectors
};

struct sprite walls = 
{
	.y = -115,
	.x = 0,
	.angle = 0,
	.scale = 80,
	.shape = &walls_shape
}; 

struct packet_t city_vectors[] =
{
	{MOVE,{-80,	30}},//0.       	
	{DRAW,{  0,-60}},//1.		
	{DRAW,{-45,	 0}},//2.	
	{DRAW,{  0, 10}},//3.
	{DRAW,{ 35,	 0}},//4.
	{DRAW,{  0,	40}},//5.
	{DRAW,{-35,  0}},//6.
	{DRAW,{  0, 10}},//7.
	{DRAW,{ 45,  0}},//8.
	{MOVE,{-25,-20}},
	{DRAW,{  0, -5}},
	{DRAW,{  5, -5}},
	{DRAW,{ -5, -5}},
	{DRAW,{  0, -5}},
	{DRAW,{-20,  0}},
	{DRAW,{  0, 20}},	
	{DRAW,{ 20,  0}},	
	{DRAW,{  0,-20}},	
	{STOP,{  0,  0}}
};

struct vector_list_t city_shape = 
{
	.type = PACKET,	// type of player vector list
	.size = 19,	// length of player ector list
	.vectors =&city_vectors		// generic pointer to array of the player vectors
};

struct sprite city = 
{
	.y = -115,
	.x = 0,
	.angle = 0,
	.scale = 80,
	.shape = &city_shape
}; 

struct packet_t corners_vectors[] =
{
	{MOVE,{-115,  75}},       	
	{DRAW,{ -10,   0}},		
	{DRAW,{   0,  50}},	// first corner 
	{DRAW,{  40,   0}},
	{DRAW,{   0, -10}},
	{DRAW,{ -30,   0}},
	{DRAW,{   0, -40}},
	
	{MOVE,{ 115,   0}},
	{MOVE,{ 115,   0}},
	{DRAW,{  10,   0}},
	{DRAW,{   0,  50}}, //seconde corner
	{DRAW,{ -45,   0}},
	{DRAW,{   0, -10}},
	{DRAW,{  35,   0}},
	{DRAW,{   0, -40}},
	
	{MOVE,{   0, -75}},
	{MOVE,{   0, -75}},
	{DRAW,{  10,   0}},
	{DRAW,{   0, -50}},// third corner
	{DRAW,{ -55,   0}},
	{DRAW,{   0,  10}},
	{DRAW,{  45,   0}},
	{DRAW,{   0,  40}},
	
	{MOVE,{-115,   0}},
	{MOVE,{-115,   0}},       	
	{DRAW,{ -10,   0}},		
	{DRAW,{   0, -50}},	// fourth corner
	{DRAW,{  45,   0}},
	{DRAW,{   0,  10}},
	{DRAW,{ -35,   0}},
	{DRAW,{   0,  40}},
	
	{STOP,{  0,  0}}
};

struct vector_list_t corners_shape = 
{
	.type = PACKET,	// type of player vector list
	.size = 35,	// length of player ector list
	.vectors =&corners_vectors		// generic pointer to array of the player vectors
};

struct sprite corners = 
{
	.y = 0,
	.x = 0,
	.angle = 0,
	.scale = 110,
	.shape = &corners_shape
}; 

void draw_field()
{
	draw_sprite(&city);
	draw_sprite(&corners);
}
