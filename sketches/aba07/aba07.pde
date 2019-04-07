//Condizionali

int r = 0;
int g = 0;
int b = 0;

void setup() {
 size(500, 500); 
}

void draw() {
  background(r, g, b);
  
  if(mouseX > width/2){
   r = r+1; 
  } else {
   r = r-1; 
  }
}