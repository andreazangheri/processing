//RANDOM
// random(high)
// random(low,high)

float r;
float g;
float b;
float a;
float diametro;
float x;
float y;

void setup(){
  //size(600, 600);
  fullScreen();
  background(0);
}

void draw(){
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  diametro = random(50);
  x = random(width);
  y = random(height);
  
  noStroke();
  fill(r,g,b,a);
  ellipse(x,y,diametro,diametro);
}

void mousePressed() {
  save("randomWall" + hour() + minute() + second() +".jpg");
}