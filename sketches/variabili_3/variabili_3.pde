//SKETCH 1 --- AUMENTO 
//variabili condizionali

/*int cerchioX = 100;
  int cerchioY = 300;

void setup() {
  size(600,600);
  //background(255);
  
}

void draw() {
  background(255);
  noStroke();
  fill(36,145,cerchioX,50);
  ellipse(cerchioX,height/2,100,100);
  
  cerchioX = cerchioX + 2; // aumenta di n la variabile
}*/

//SKETCH 2 --- VELOCITY

/*int cerchioX = 100;
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
  ellipse(cerchioX,height/2,100,100);
  
  cerchioX = cerchioX + velocity;
}*/

//SKETCH 3 --- CONDIZIONALI


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
  ellipse(cerchioX,height/2,100,100);
  
  cerchioX = cerchioX + velocity;
  
  /*se cerchioX è maggiore della larghezza finestra OPPURE cerchioX è minore di 0
  inverti la direzione*/
  if(cerchioX > width - 50 || cerchioX < 0 + 50) {    //condizionale if -- || oppure
    velocity = velocity * -1;
  }
}

// || OPPURE (una delle due condizioni)
// &&
// 