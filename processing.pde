void setup(){
  size(600,600);
  background(0);
}

void draw(){
  stroke(255);
  strokeWeight(1);
  //fill(mouseX); 
  noFill();
  rect(mouseX,mouseY,mouseX,mouseX); 
  println(mouseX);
}

void mousePressed(){
 ellipse(mouseX,mouseY,100,100); 
}

void keyPressed(){
  background(0);
}
