PImage roadBackground;
int FrogX = 200;
int FrogY = 355;
void setup(){
size(400, 400);
roadBackground = loadImage("crossyROAD.png");
}

void draw(){
background(roadBackground);
fill(153, 255, 153);
ellipse(FrogX, FrogY, 70, 50);
fill(0, 0, 0);
ellipse(FrogX-10, FrogY-10, 10, 10);
fill(255, 255, 255);
ellipse(FrogX-10, FrogY-12, 5, 5);
fill(0, 0, 0);
ellipse(FrogX+10, FrogY-10, 10, 10);
fill(255, 255, 255);
ellipse(FrogX+10, FrogY-12, 5, 5);
fill(0, 0, 0);
ellipse(FrogX-1, FrogY-20, 1, 3);
fill(0, 0, 0);
ellipse(FrogX+2, FrogY-20, 1, 3);

canvas();
}

void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      FrogY = FrogY-10; //Frog Y position goes up
      }
      else if(keyCode == DOWN)
      {
      FrogY = FrogY+10; //Frog Y position goes down 
      }
      else if(keyCode == RIGHT)
      {
      FrogX = FrogX+10; //Frog X position goes right
      }
      else if(keyCode == LEFT)
      {
      FrogX = FrogX-10;  //Frog X position goes left
      }
   }}
 
 void canvas(){
 if(FrogX > 400){
 FrogX = 350;
 }
 
 else if(FrogX < 0){
 FrogX = 50;
 }
 
 else if(FrogY < 0){
 FrogY = 50;
 }
 
  else if(FrogY > 400){
 FrogY = 350;
 }
 }
 
 


