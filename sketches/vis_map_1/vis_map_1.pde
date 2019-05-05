//Inserire una mappa

PShape mappa; //variabile per inserire SVG

void setup() {
  size(512, 643); //larghezza e altezza dell'SVG (proporzionali)
  mappa = loadShape("Italy_location_map.svg"); //carico la mappa in SVG
}

void draw() {
  /*inserisco la mappa, partendo dall'origine, e faccio in modo che sia
  larga e alta come lo sketch*/
  shape(mappa, 0, 0, width, height); 
}