int y = 5;
int randomX = (int) random(300);
int score = 0;

void setup() {
  size(300, 300);
}

void draw() {
  background (150, 200, 255);
  fill(240, 90, 255);
  stroke (255, 255, 255);
  ellipse(randomX, y+=5, 10, 10);
  if (y > height) {
    y = 0;
    randomX = (int) random(300);
  }
  fill(115, 220, 190);
  rect(mouseX, 279, 30, 20);

  checkCatch(randomX); 

  fill(0, 0, 0);
  textSize(14);
  text("Score: " + score, 10, 20);
}

void checkCatch(int randomX) {
  if (randomX > mouseX && randomX < mouseX+30 && y == 280) {
    score++;
  }
  
  //losing points (doesn't work)
  //else if (randomX < mouseX && randomX > mouseX+30 && y == 300 && score > 0) {
  //  score--;
  //}
  //println("Your score is now: " + score);
}
