PImage roadBackground;
int FrogX = 200;
int FrogY = 355;
void setup(){
size(500, 500);  
}

void draw(){
background(128, 128, 128);
noStroke();
fill(153, 255, 153);
ellipse(FrogX, FrogY, 70, 50);
ellipse(FrogX-15, FrogY+23, 15, 15);
ellipse(FrogX+15, FrogY+23, 15, 15);
fill(0, 0, 0);
ellipse(FrogX-10, FrogY-10, 10, 10);
fill(255, 255, 255);
ellipse(FrogX-10, FrogY-12, 5, 5);
fill(0, 0, 0);
ellipse(FrogX+10, FrogY-10, 10, 10);
fill(255, 255, 255);
ellipse(FrogX+10, FrogY-12, 5, 5);

canvas();

Car LPink = new Car(300, 19, 100, 19, 238, 102, 153, 1);
LPink.display();

Car RLpink = new Car(300, 39, 100, 19, 238, 170, 204, 1);
RLpink.display();

Car Lpurple = new Car(300, 59, 100, 19, 187, 119, 255, 1);
Lpurple.display();

Car Lblue = new Car(300, 79, 100, 19, 153, 153, 255, 1);
Lblue.display();
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
 
class Car{
  int x = 400;
  int y = 100;
  int height = 100;
  int width = 19;
  int red = 238;
  int green = 102;
  int blue = 153;
  int speed = 1;
Car(int x, int y, int height, int width, int red, int green, int blue, int speed){
 this.x = x;
 this.y = y;
 this.height = height;
 this.width = width;
 this.red = red;
 this.blue = blue;
 this.green = green;
 this.speed = speed;
}
 void display() 
  {
    fill(red, green, blue);
    rect(x, y, height, width, red, green, blue, speed);
  }
 }
 




