int x = 500;
int y = 487;
int w = 30;
int h = 12;
int base = 14;
int rows = 14;

void setup (){
size(1000,1000);
background(255, 255, 255);
}

void draw(){

  for(int i = 0; i<14; i++){
  for(int a = 0; a < base; a++){
    
    rect(x+w , y-h, w, h);

    
    x = w*i;
    
    y = y+12;
    
   
  
  }
 
  }
  
  
//  for(int a = 0; a < base; a++){
//    rect(x + 35, y, width, height);
//x = width*a;
//    for(int i = 0; i < rows; i++){
//        rows--;
//      y = height*i;

    
//}}
}