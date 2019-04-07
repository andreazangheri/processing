// condizionali

int r = 0;
int g = 0;
int b = 0;

void setup(){
  size(500,500);
}

void draw(){
  background(r,g,b);
  
  if(mouseY > height/2){
    g = g + 1;
  } else {
    g = g - 1;
  }
  
  if(mouseX > width/2){
    r = r + 1;
  } else {
    r = r - 1;
  }
}