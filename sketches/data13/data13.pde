//Appended data file

color[] palette = {#A7E3E5, #0E1B29, #87030B, #D9DA37, #9BC3AE};

Table stateData;//oggetto Table, racchiude dati in righe e colonne
int rowCount;//numero di righe

void setup() {
  size(630, 630);
  stateData = loadTable("gdp-f.tsv", "header");//carico il file, la cui prima riga funziona da intestazione, "header"
  rowCount = stateData.getRowCount();//dà il numero di righe nel file
  println("rowCount =" + rowCount);//controllo quante sono le righe nel file
}

void draw() {
  scale(1, -1);//questa linea e la successiva per invertire l'asse delle y (vd. problema origine di Processing)
  translate(0, -height);
  
  background(palette[0]);
  smooth();
  fill(palette[1]);
  noStroke();
  
  for(int row = 0; row < rowCount; row++) {
    float fertility = stateData.getFloat(row, 2);//ricavo tutti i valori della colonna "fertility"
    float gdp = stateData.getFloat(row, 1);//ricavo tutti i valori della colonna "gdp"
    float x = map(fertility, 0, 7, 0, 600);//rimappo i valori per associarli alla mia scala (cioè a size)
    float y = map(gdp, 4, 699, 50, 600);//rimappo i valori per associarli alla mia scala (cioè a size)
    ellipse(x, y, 10, 10);//ottengo tutti i pallini
  }
}