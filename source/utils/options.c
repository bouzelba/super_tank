#include "options.h"
int check_heigh_score()
{
	return 0;
}
void clear_score()
{
	
}

int check_turbo_colision()
{
	return 0;
}
int check_turbo_use(int *t)
{
	if(*t != 0)
	{
		*t = *t -10;
		return 1;
	}
	else
	{
		return 0;
	}
}
