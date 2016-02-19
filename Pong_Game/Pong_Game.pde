
import ddf.minim.*;   
Minim minim;
AudioSample sound; 

PImage backgroundImage;

int x = 250;
int Xspeed = 1;

int y = 250;
int Yspeed = 4;

void setup()
{
size(500, 500);

minim = new Minim (this);
sound = minim.loadSample("18533.wav", 128);

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
   Yspeed = -Yspeed; 
   sound.trigger();
 }
 
 if (0 >= y)
 {
   Yspeed = -Yspeed;
     
 }
  
 
 x+=Xspeed;
 y+=Yspeed;
 
}
