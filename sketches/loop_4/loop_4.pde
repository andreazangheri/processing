void setup(){
size(500,500);
background(240);
}

void draw(){
  int x = 0;
  int y = 0;
for(x = 0; x < width; x += 10){
  frameRate(15);
  noStroke();
  fill(random(255),random(255),random(255));
  rect(x,0,10,10);
  rect(0,y,10,10);
  rect(x,y,10,10);
  y = y + 10;
}
}