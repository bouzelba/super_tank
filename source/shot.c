
#include <vectrex.h>

#include "player.h"
#include "utils\sprites.h"
#include "utils\vector.h"
#include "utils\controller.h"
#include "utils\options.h"

struct packet_t missils_voctors[] =
{
	{MOVE,{30,	 2}},//0.       	
	{DRAW,{  0,	-4}},//1.		
	{STOP,{  0,  0}}
};

struct vector_list_t missils_shape = 
{
	.type = DUFFY,	// type of player vector list
	.size = 3,	// length of player ector list
	.vectors =&missils_voctors	// generic pointer to array of the player vectors
};

struct sprite missils = 
{
	.y = 0,
	.x = 0,
	.angle = 0,
	.scale = 0,
	.shape = &missils_shape
};

struct packet_t shots_voctors[] =
{
	{MOVE,{30,	 2}},//0.       	
	{DRAW,{  0,	-4}},//1.		
	{STOP,{  0,  0}}
};

struct vector_list_t shots_shape = 
{
	.type = DUFFY,	// type of player vector list
	.size = 3,	// length of player ector list
	.vectors =&shots_voctors	// generic pointer to array of the player vectors
};

struct sprite shots = 
{
	.y = 0,
	.x = 0,
	.angle = 0,
	.scale = 0,
	.shape = &shots_shape
};

struct sprite* const fire_objects[] = 
{
	&shots,
	&missils
};


void init_shot()
{
	fire_objects[0]->x =0;
	fire_objects[0]->y =0;
	fire_objects[0]->scale =0;	
}

void init_missils()
{    
	fire_objects[1]->x = 0;
	fire_objects[1]->y = 0;
	fire_objects[1]->scale = 0;	
}


void fire_shots()
{

}
