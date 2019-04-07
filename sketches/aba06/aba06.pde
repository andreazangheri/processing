//Condizionali


int cerchioX = 100;
int velocity = 2;

void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  noStroke();
  fill(136, 145, cerchioX*4, 100);
  ellipse(100, cerchioX, 50, 50);
  
  cerchioX = cerchioX + velocity;
  
  if(cerchioX > height || cerchioX < 0) {
   velocity = velocity * -1; 
  }
 
}

// || ORS ("oppure": una delle due condizioni)
// && AND ("e": si devono verificare entrambe le condizioni
// != NOT ("non è uguale")