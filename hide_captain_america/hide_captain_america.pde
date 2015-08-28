PImage captainamerica;    
void setup()
{
size (1300,1390);
captainamerica=loadImage("ca.png");   
PImage background=loadImage("background.png");
background(background);
captainamerica.resize(5,5);
}

void draw()
{ 
image(captainamerica, 100, 200); 

}
