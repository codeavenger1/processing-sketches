void setup ()
{
size (500,500);
}

void draw ()
{
  for (int i = 0; i < 500; i+=10)
  {
ellipse (i, i, 55, 55);

if (i %20==0)
{
fill (239, 255, 0);
}

else 
{
fill (0,0,0);
}
}
}
