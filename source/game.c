#include "utils\controller.h"
#include "utils\print.h"

#include "player.h"
#include "enemies.h"
#include "field.h"



// ---------------------------------------------------------------------------
// game setup, things which need to be done once at the beginning of each game

void game_init()
{
	// activate first joystick, switch off second joystick
	enable_controller_1_x();
	enable_controller_1_y();
	disable_controller_2_x();
	disable_controller_2_y();
	
	// initialize data
	init_player();
	init_enemies();
	
	// show start up message for 1.5 seconds
	unsigned int t = 75;
	while(--t > 0)
	{
		Wait_Recal();
		Reset0Ref();
		print_str(0, -60, "GET READY");
	}
}


// ---------------------------------------------------------------------------
// main game loop, this is where the action happens

void game_loop()
{
	int player_alive = 1;
	
	// as long as player is alive
	while(player_alive)
	{
		// synchronize loop
		Wait_Recal();	
		
		// compute movements
		move_player();
		move_enemies();
		
		// draw everything
		draw_field();
		draw_player();
		draw_enemies();
		
		// check fpr collisions
		player_alive = check_player();
	}
}

// ---------------------------------------------------------------------------
// R.I.P.

void game_over()
{
	// show good bye message for 3 seconds
	unsigned int t = 150;
	while(--t > 0)
	{
		Wait_Recal();
		Reset0Ref();
		print_str(0, -70, "GAME OVER");
	}
}

// ---------------------------------------------------------------------------
// game cycle

int game()
{
	game_init();
	game_loop();
	game_over();
	return -1;	
}
