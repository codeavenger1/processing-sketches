ArrayList<Float> x = new ArrayList<Float>();
ArrayList<Float> y = new ArrayList<Float>();
int snow = 1000;
int colors = 750; 
void setup(){
size(1000,1000);
for(int i = 0; i< 100; i++){
 x.add(random(width));
 y.add(random(width));
}
}

void draw(){
background(0,0);
for (int i = 0; i < x.size(); i++){
  y.set(i,y.get(i)+1);
 
 noStroke();
 fill(#6F060D);
 rect(800, 800, 20, 200);
 fill(#389B53);
 ellipse(810,750,100,120);
 
 
 fill(#FFFFFF);
 ellipse(x.get(i),y.get(i), 3, 3);

 if(y.get(i)>=1000){
   y.set(i,0.0);
   snow--;
 }
 if(y.get(i)>=750){
   colors--;
 }
 rect(0, snow, 1000, 1000);
 
 
}
}