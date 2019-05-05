// SKETCH 4 --- CONDIZIONALI
// rimbalzo verticale

int cerchioX = 100;
int cerchioY = 300;
int velocity = 1; //

void setup() {
  size(600,600);
  //background(255);
  
}

void draw() {
  background(255);
  noStroke();
  fill(36,145,cerchioX,50);
  ellipse(width/2,cerchioX,100,100);
  
  cerchioX = cerchioX + velocity;
  
  /*se cerchioX è maggiore della larghezza finestra OPPURE cerchioX è minore di 0
  inverti la direzione*/
  if(cerchioX > width - 50 || cerchioX < 0 + 50) {    //condizionale if -- || oppure
    velocity = velocity * -1;
  }
}