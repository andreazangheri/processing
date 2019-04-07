//Variabili
//boolean unoDue = true;
//char carattere = "g";
//int numero = 34;
//float virgola = 34.2;



int cerchioX = 100;
int cerchioY = 300;

void setup() {
  size(600, 600);
  //background(255);
}

void draw() {
  background(255);
  noStroke();
  fill(36, 145, cerchioX, 50);
  ellipse(cerchioX, cerchioY, cerchioX, cerchioX);
  
  cerchioX = cerchioX + 2;
}