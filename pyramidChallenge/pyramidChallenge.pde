int x = 50;
int y = 487;
int BRICK_WIDTH = 30;
int StartX = 30;
int BRICK_HEIGHT = 12;
int BRICKS_IN_BASE = 14;
void setup (){
   size(500, 500);
   background(255, 255, 255);
}
void draw(){
  for(int a = BRICKS_IN_BASE; a > 0; a--){
    x=StartX;
  for(int i = 0; i < a; i++){
    rect(x + BRICK_HEIGHT , y - BRICK_WIDTH, BRICK_WIDTH , BRICK_HEIGHT);
    x+=BRICK_WIDTH;
  }
   y-=BRICK_HEIGHT;
   StartX+=15;
  }
   x=0;
   y=0;
}