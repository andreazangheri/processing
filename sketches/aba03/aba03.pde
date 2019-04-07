//width
//height
//mouseX
//mouseY
//pmouseX
//pmouseY

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  //stroke(45);
  noStroke();
  fill(mouseX, mouseX, 30);
  //println(mouseX);
  ellipse(mouseX, mouseY, mouseX, mouseY);
}

void mousePressed() {
  
}

void keyPressed() {
  background(255);
}