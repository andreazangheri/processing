void setup(){
size(500,500);
background(240);
}

void draw(){
for(int l = 0; l < width; l += 10){
  for(int a = 0; a < height; a += 10){
  frameRate(15);
  noStroke();
  fill(random(255));
  rect(l,a,10,10);
}
}
}