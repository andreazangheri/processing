int colore = 0;

void setup(){
  size(600,600);
  background(255);
}

void draw() {
  noStroke();
  fill(colore,155,155);
  ellipse(width/2,height/2,400,400);
  
  colore = colore + 1;
}