   int birdyX = 250;
  int birdyY = 0;
  double birdVelocity = 3;
  double gravity = 0.2;
  int pipePosition = 500;
   int pipePos = 495;
   int random = (int) random(100, 400);

void setup(){
  size(600, 600);
}

void draw(){
  
  birdVelocity+=gravity;
  birdyY+=birdVelocity;
  background(10, 246, 128);
  fill(224, 224, 224);
  rect(pipePosition--, random, 100, 1000);
  rect(pipePos--, random, 110, 20);
  
  fill(255, 204, 0);
  ellipse(birdyX, birdyY, 20, 20);
  
  if(pipePosition == -200 ){
  pipePosition = 510;
  pipePos = 505;
  random = (int) random(100, 400);
  } 
// if(intersects){
// 
// } 
//  boolean intersects(int birdyX, int birdyY, int pipePosition, int pipePos, int paddleLength) {
//if (birdyY > pipePosition - 4 && birdyX > pipePosition && birdyX < pipePos + paddleLength)
//return true;
//else 
//return false;
//}
//
// 
//}

void mousePressed(){
birdVelocity= -3;
}
