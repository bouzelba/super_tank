#include <vectrex.h>

#include "utils\sprites.h"
#include "utils\vector.h"
#include "utils\controller.h"
#include "utils\options.h"



int turbo_use = 100; 
unsigned int player_angle = 0;
int dx[] = 
{
	0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-16,
	-15,-14,-13,-12,-11,-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,
	1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
	15,14,13,12,11,10,9,8,7,6,5,4,3,2,1	 				
};
int dy[] = 
{
	16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,
	-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-15,-16,
	-15,-14,-13,-12,-11,-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,
	1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
};
struct packet_t player_voctors[] =
{
	//~ {MOVE,{-95,  0}},
	{MOVE,{30,	 2}},//0.       	
	{DRAW,{  0,	-4}},//1.		
	{DRAW,{-20,	 0}},//2.	
	{DRAW,{  0, -8}},//3.
	{DRAW,{  5,	-2}},//4.
	{DRAW,{  0,	-3}},//5.
	{DRAW,{ -5, -3}},//6.
	{DRAW,{-30,  0}},//7.
	{DRAW,{ -5,	 3}},//8.
	{DRAW,{  0,	 3}},//9.
	{DRAW,{  5,  2}},//10.
	{DRAW,{  0,	20}},//11.
	{DRAW,{ -5,  2}},//12.
	{DRAW,{  0,  3}},//13.
	{DRAW,{  5,  3}},//14.
	{DRAW,{ 30,	 0}},//15.
	{DRAW,{  5,	-3}},//16.
	{DRAW,{  0,	-3}},//17.
	{DRAW,{ -5,	-2}},//18.
	{DRAW,{  0,	-8}},//19.
	{DRAW,{ 20,	 0}},//20.
	{STOP,{  0,  0}}
};

struct vector_list_t player_shape = 
{
	.type = PACKET,	// type of player vector list
	.size = 22,	// length of player ector list
	.vectors =&player_voctors	// generic pointer to array of the player vectors
};

struct sprite player = 
{
	.y = 0,
	.x = 0,
	.angle = 0,
	.scale = 0,
	.shape = &player_shape
};

void init_player()
{
	player.y = -95;
	player.x = 0;
	player.angle = 0;
	player.scale = 30;
	
};

void move_player()
{

	// read joystick values
	check_joysticks();
	
	//when has turbo 
	if(turbo)
	{
		if (joystick_1_left())
		{
			//~ player.x -= 5;
			player_angle = player.angle-- & 0b00111111;
		}
		else if (joystick_1_right())
		{
			//~ player.x += 5;
			player_angle = player.angle++ & 0b00111111;
		}
		// y movement
		if (joystick_1_up())
		{
		    player.x += dx[player_angle]/5;
		    player.y += dy[player_angle]/5;
			//check_turbo_use(&turbo_use);
		}
		else if (joystick_1_down())
		{
			player.x += dx[player_angle]/5;
			player.y += dy[player_angle]/5;
			//check_turbo_use(&turbo_use);
		}
			
	}
	//when has no turbo 
	else
	{
		// change the angle  
		if (joystick_1_left())
		{
			player_angle = player.angle-- & 0b00111111;
		}
		else if (joystick_1_right())
		{
			player_angle = player.angle++ & 0b00111111;
		}

		// move 
		if (joystick_1_up())
		{
			 player.x += dx[player_angle]/3;
			 player.y += dy[player_angle]/3;
		}
		else if (joystick_1_down())
		{
			 player.x -= dx[player_angle]/3;
			 player.y -= dy[player_angle]/3;
		}
	}
	
	
	// read buttons
	check_buttons();
	
	// button to fire 
	if (button_1_4_held())
	{
		//fire shooting
		//~ fire();
	}
	// button to use turbo if there is one 
	else if (button_1_3_held())
	{
		//turbo
		if(check_turbo_colision())
		{
			turbo = check_turbo_use(&turbo_use);
		}
		
	}

	// not used for the moment 
	//~ if (button_1_2_held())
	//~ {
		
	//~ }
	//~ else if (button_1_1_held())
	//~ {

	//~ }
	
}

void draw_player()
{
	draw_sprite(&player);
}

int check_player()
{
	return 1; //1 alive 0 dead 
}
