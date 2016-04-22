  import ddf.minim.*;
  Minim minim;        
  AudioPlayer song;      
PImage pictureOfRecord;
int angleOfRecord = 1;
void setup()
{
  minim = new Minim(this);   
  song = minim.loadFile("music.mp3", 800);
size(800, 800);
pictureOfRecord = loadImage("FDS_381042.png");
}

void draw()
{
  if(mousePressed)
  {
    
rotateImage(pictureOfRecord, angleOfRecord);
image(pictureOfRecord, 0 ,0);
angleOfRecord+=10;
song.play();
}
else{
song.pause();
}
}

void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}


