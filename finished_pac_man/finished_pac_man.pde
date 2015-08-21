int move = 10;
void setup()
{
  size(800, 500);
}

void draw ()
{
  background (255, 255, 255);
  noFill();

  for (int i= 1; i < 1000; i +=10)
  {
     ellipse (400, 250, i, i);
  }
  
  if (move %10==0)
  {
  fill (255, 255, 0);
  arc(200+move, 200, 200, 200, 0, 9, 6);
  }
  
  fill (255, 255, 0);
  arc(200+move, 200, 200, 200, 0, 6, 6);
  
  if (move < 100)
  {
   fill (0, 0, 255);
  rect(400, 180, 20, 20);
  }
  
  if (move < 200)
  {
   fill (0, 0, 255);
  rect(500, 180, 20, 20);
  }
  
   if (move < 300)
  {
   fill (0, 0, 255);
  rect(600, 180, 20, 20);
  }
  
   if (move < 400)
  {
   fill (0, 0, 255);
  rect(700, 180, 20, 20);
  }
  
   if (move < 500)
  {
   fill (0, 0, 255);
  rect(800, 180, 20, 20);
  }
  
   if (move < 600)
  {
   fill (0, 0, 255);
  rect(900, 180, 20, 20);
  }
  
  if (move < 700)
  {
   fill (0, 0, 255);
  rect(1000, 180, 20, 20);
  }
  
  move+=1;

}






