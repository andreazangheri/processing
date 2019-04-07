Table table;

void setup() {
  size(800, 600);
  background(255);
  table = loadTable("rotten-tomatoes.csv", "header");
}

void draw() {
  //questa linea e la successiva per invertire l'asse delle y
  scale(1, -1);
  translate(0, -height);

  for (int i = 0; i<table.getRowCount(); i++) {

    // Access each row of the table one at a time, in a loop.
    TableRow riga = table.getRow(i);
    int n = riga.getInt("identificativo");
    String titolo = riga.getString("titolo");
    int score = riga.getInt("punteggio");
    String tipologia = riga.getString("tipologia");

    if (score < 0) {
      fill(0);
    }

    /* non si può usare tipologia == "cartoon" perché String non è un numero
     e quindi non si può usare con l'operatore == */
    if (tipologia.equals("cartoon") == true) {
      fill(#E8235E);
    } 
    if (tipologia.equals("comedy") == true) {
      fill(#B0F566);
    } 
    if (tipologia.equals("drama") == true) {
      fill(#4AF2A1);
    } 
    if (tipologia.equals("thriller") == true) {
      fill(#5CC9F5);
    } 
    if (tipologia.equals("series") == true) {
      fill(#6638F0);
    }
    println(tipologia);
    //fill(score*3, 90, 90);
    stroke(200);
    rect(10+(i*15), 100, 15, score*3);
  }
}