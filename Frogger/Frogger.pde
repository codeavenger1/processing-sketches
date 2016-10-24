PImage roadBackground;
int FrogX = 400;
int FrogY = 40;
int hop = 70;
void setup() {
  size(800, 800);
}
Car LPink = new Car(300, 80, 200, 70, 238, 102, 153, (int)random(10));
Car RLblue = new Car(300, 151, 100, 70, 221, 221, 255, (int)random(-20));
Car Lpurple = new Car(300, 222, 134, 70, 187, 119, 255, (int)random(-10));
Car Lblue = new Car(300, 293, 70, 70, 153, 153, 255, (int)random(10));
Car LPIInk = new Car(300, 364, 100, 70, 255, 187, 255, (int)random(-10));
Car LOrange = new Car(300, 435, 150, 70, 255, 187, 136, (int)random(20));
Car MPink = new Car(300, 506, 345, 70, 255, 136, 187, (int)random(10));
Car MPurple = new Car(300, 577, 124, 70, 187, 136, 255, (int)random(-10));
Car MBlue = new Car(300, 648, 167, 70, 153, 170, 255, (int)random(-10));


void draw() {
  background(128, 128, 128);

  canvas();

  LPink.display();
  LPink.move();
 if (intersects(LPink)){
 FrogX = 400;
  FrogY = 40;
 }

  RLblue.display();
  RLblue.move();
  if (intersects(RLblue)){
 FrogX = 400;
  FrogY = 40;
 }

  Lpurple.display();
  Lpurple.move();
  if (intersects(Lpurple)){
 FrogX = 400;
  FrogY = 40;
 }

  Lblue.display();
  Lblue.move();

  LPIInk.display();
  LPIInk.move();
  if (intersects(LPIInk)){
 FrogX = 400;
  FrogY = 40;
 }

  LOrange.display();
  LOrange.move();
  if (intersects(LOrange)){
 FrogX = 400;
  FrogY = 40;
 }

  MPink.display();
  MPink.move();
  if (intersects(MPink)){
 FrogX = 400;
  FrogY = 40;
 }

  MPurple.display();
  MPurple.move();
  if (intersects(MPurple)){
 FrogX = 400;
  FrogY = 40;
 }

  MBlue.display();
  MBlue.move();
  if (intersects(MBlue)){
 FrogX = 400;
  FrogY = 40;
 }


  fill(255, 238, 136);
  rect(0, 0, 800, 70);
  rect(0, 730, 800, 70);


  noStroke();
  fill(51, 255, 153);
  ellipse(FrogX, FrogY, 70, 50);
  ellipse(FrogX-20, FrogY+24, 15, 15);
  ellipse(FrogX+20, FrogY+24, 15, 15);
  fill(0, 0, 0);
  ellipse(FrogX-10, FrogY-10, 10, 10);
  fill(255, 255, 255);
  ellipse(FrogX-10, FrogY-12, 5, 5);
  fill(0, 0, 0);
  ellipse(FrogX+10, FrogY-10, 10, 10);
  fill(255, 255, 255);
  ellipse(FrogX+10, FrogY-12, 5, 5);
}
boolean intersects(Car car) {
  if ((FrogY > car.getY() && FrogY < car.getY()+50) && (FrogX > car.getX() && FrogX < car.getX()+car.getSize()))
    return true;
  
  else
    return false;
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      FrogY = FrogY-hop; //Frog Y position goes up
    } else if (keyCode == DOWN)
    {
      FrogY = FrogY+hop; //Frog Y position goes down
    } else if (keyCode == RIGHT)
    {
      FrogX = FrogX+hop; //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      FrogX = FrogX-hop;  //Frog X position goes left
    }
  }
}

void canvas() {
  if (FrogX > 800) {
    FrogX = 750;
  } else if (FrogX < 0) {
    FrogX = 50;
  } else if (FrogY < 0) {
    FrogY = 50;
  } else if (FrogY > 800) {
    FrogY = 750;
  }
}

class Car {
  int x = 400;
  int y = 100;
  int height = 100;
  int width = 19;
  int red = 238;
  int green = 102;
  int blue = 153;
  int speed = 1;
  Car(int x, int y, int height, int width, int red, int green, int blue, int speed) {
    this.x = x;
    this.y = y;
    this.height = height;
    this.width = width;
    this.red = red;
    this.blue = blue;
    this.green = green;
    this.speed = speed;
  }
  int getY() {
    return y;
  }

  int getX() {
    return x;
  }

  int getSize() {
    return  width*height;
  }
  void display() 
  {
    fill(red, green, blue);
    rect(x, y, height, width, red, green, blue, speed);
  }

  void move() {
    x+=speed;

    if (x > 700) {
      x = -50;
    }
    if (x < -50) {
      x = 700;
    }
  }
}




