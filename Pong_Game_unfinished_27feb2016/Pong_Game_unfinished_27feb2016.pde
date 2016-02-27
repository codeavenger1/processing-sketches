
import ddf.minim.*;   
Minim minim;
AudioSample sound; 

PImage backgroundImage;

int x = 250;
int Xspeed = int(random(8));

int y = 250;
int Yspeed = 5;

void setup()
{
  size(500, 500);

  minim = new Minim (this);
  sound = minim.loadSample("sad_trombone.wav", 128);

  backgroundImage = loadImage("unicorn.jpg");
}

void draw()
{
  background(255, 136, 187); 

  image(backgroundImage, 0, 0);
  image(backgroundImage, 0, 0, 500, 500);  

  fill(187, 119, 255);
  stroke(187, 000, 153);
  ellipse(x, y, 20, 20);

  fill(000, 000, 000);
  stroke(000, 238, 255);
  rect(mouseX, 485, 100, 10);


  if (width <= x)
  {
    Xspeed = -Xspeed;
    
  }

  if (0 >= x)
  {
    Xspeed = -Xspeed;
    
  }


  if (height <= y)
  {
    //Yspeed = -Yspeed; 
    fill(000, 000, 000);
    textSize(32);
    text("GAME OVER", 10, 30); 
    sound.trigger();
  }

  if (0 >= y)
  {
    Yspeed = -Yspeed;
    Xspeed = int(random(-8, 8));
  }

boolean hitPaddle = (intersects (x, y, mouseX, 485, 100));
    if (hitPaddle)
    {
      Yspeed = -Yspeed;
      Xspeed = int(random(-8, 8));
    }

  x+=Xspeed;
  y+=Yspeed;
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}

