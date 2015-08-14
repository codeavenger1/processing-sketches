
void setup()
{
  size(800, 500);
}

void draw ()
{
  noFill();

  for (int i= 1; i < 1000; i +=10)
  {
     ellipse (400, 250, i, i);
  }
  fill (255, 255, 0);
  arc(200, 200, 200, 200, 0, 6, 6);
}

