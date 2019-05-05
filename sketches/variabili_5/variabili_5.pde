int cerchioX = 100;
int cerchioY = 300;
int velocity = 1;

void setup() {
  size(600,600);
  background(255);
  
}

void draw() {
  //background(255);
  noStroke();
  fill(36,145,cerchioX,50);
  ellipse(cerchioX,cerchioY,cerchioX,cerchioX);
  
  cerchioX = cerchioX + velocity;
  
  if(cerchioX > width - 50 || cerchioX < 0){
    velocity = velocity * -1;
  }
}