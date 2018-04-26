# 1 "source\\utils\\options.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "source\\utils\\options.c"
# 1 "source\\utils\\/options.h" 1

int turbo = 0;
unsigned int lives_number = 3;
unsigned int score;


int check_heigh_score();
void clear_score();
int check_turbo_use(int *t);
int check_turbo_colision();
# 2 "source\\utils\\options.c" 2
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
