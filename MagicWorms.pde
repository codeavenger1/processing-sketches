void setup(){
size(1000, 1000);
background(0, 0, 0);
}

void draw(){
  
float x = random(1000);
float y = random(1000);
for(int i = 0; i < 301; i++){
  fill(255, 195, 0);
  ellipse(x, y, 10, 10);
}
}

float frequency = .001;
    float noiseInterval = PI;

    void makeMagical() {
        fill( 0, 0, 0, 10 );
        rect(0, 0, width, height);
        noStroke();
    }

    float getWormX(int i) {
        return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
    }

    float getWormY(int i) {
        return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
    }
