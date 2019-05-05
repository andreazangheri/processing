//Inserire dati sulla mappa

PShape mappa; //variabile per inserire SVG
Table dati; //variabile per usare CSV

void setup() {
  size(512, 643); //larghezza e altezza dell'SVG (proporzionali)
  mappa = loadShape("Italy_location_map.svg"); //carico la mappa in SVG
  dati = loadTable("popolazione.csv", "header"); //carico il CSV
}

void draw() {
  /*inserisco la mappa, partendo dall'origine, e faccio in modo che sia
   larga e alta come lo sketch*/
  shape(mappa, 0, 0, width, height);

  /*ciclo for che va dalla prima riga all'ultima, passando di riga in riga*/
  for (int riga = 0; riga < dati.getRowCount(); riga++) {
    String regione = dati.getString(riga, 0);
    float popolazione = dati.getFloat(riga, 1); //prendo la seconda colonna
    float lat = dati.getFloat(riga, 2); //prendo la terza colonna
    float lon = dati.getFloat(riga, 3); //prendo la quarta colonna
    
    float l = map(lat, 47.4, 35.3, 0, height); //mappo latitudine
    float lo = map(lon, 6.2, 19, 0, width); //mappo longitudine
    
    fill(#4AF2A1);
    noStroke();
    ellipse(lo, l, 10, 10); //disegno un pallino in corrispondenza di latitudine e longitudine
  }
}