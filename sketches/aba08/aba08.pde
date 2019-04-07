//Condizionali

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  stroke(100);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  
  if((mouseX < width/2) && (mouseY < height/2)) {
   fill(0);
   rect(0, 0, width/2, height/2);
  } else if((mouseX > width/2) && (mouseY < height/2)) {
   fill(0);
   rect(width/2, 0, width/2, height/2);
  } else if((mouseX < width/2) && (mouseY > height/2)) {
   fill(0);
   rect(0, height/2, width/2, height/2);
  } else if((mouseX > width/2) && (mouseY > height/2)) {
   fill(0);
   rect(width/2, height/2, width/2, height/2);
  }
}