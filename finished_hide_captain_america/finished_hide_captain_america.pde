PImage captainamerica;  
PImage background;

void setup()
{
size (1300,1390);
captainamerica=loadImage("ca.png");   
background=loadImage("background.png");
background(background);
captainamerica.resize(5,5);
}

void draw()
{ 
 
  if (mousePressed)
  {
    background(background);
    noStroke();
  fill (255, 0, 0);
ellipse (mouseX, mouseY, 55, 55);
  }

{ 
 
  if (isNear(mouseX, 300) && isNear (mouseY, 300))
  {
   
    noStroke();
  fill (0, 255, 0);
ellipse (mouseX, mouseY, 55, 55);
  }
  
  image(captainamerica, 300, 300); 
  
  
  if (isNear(mouseX, 500) && isNear (mouseY, 400))
  {
   
    noStroke();
  fill (0, 255, 0);
ellipse (mouseX, mouseY, 55, 55);
  }
  




captainamerica.resize(5,5);
image(captainamerica, 500, 400); 


if (isNear(mouseX, 900) && isNear (mouseY, 400))
  {
    noStroke();
  fill (0, 255, 0);
ellipse (mouseX, mouseY, 55, 55);
  }
  
  captainamerica.resize(5,5);
image(captainamerica, 900, 400); 
  
}


}

boolean isNear(int a, int b) {
      if (abs(a - b) < 10)
          return true;
     return false;
}








