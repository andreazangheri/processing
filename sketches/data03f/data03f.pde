Table table;
int c;
PFont font;//aggiunta la font

void setup() {
  size(800, 600);
  background(255);
  table = loadTable("rotten-tomatoes.csv", "header");
  font = createFont("Chivo-Regular-13.vlw", 13);//aggiunta la font
}

void draw() {
  //questa linea e la successiva per invertire l'asse delle y
  scale(1, -1);
  translate(0, -height);

  textFont(font);
  table.sort("punteggio"); //ordino per "punteggio"

  for (int i = 0; i<table.getRowCount(); i++) {

    // Access each row of the table one at a time, in a loop.
    TableRow riga = table.getRow(i);
    int n = riga.getInt("identificativo");
    String titolo = riga.getString("titolo");
    int score = riga.getInt("punteggio");
    String tipologia = riga.getString("tipologia");
    int x = 10+(i*15);
    int y = 130;

    /* non si può usare tipologia == "cartoon" perché String non è un numero
     e quindi non si può usare con l'operatore == */
    if (tipologia.equals("cartoon") == true) {
      c = #E8235E;
    } 
    if (tipologia.equals("comedy") == true) {
      c = #B0F566;
    } 
    if (tipologia.equals("drama") == true) {
      c = #4AF2A1;
    } 
    if (tipologia.equals("thriller") == true) {
      c = #5CC9F5;
    } 
    if (tipologia.equals("series") == true) {
      c = #6638F0;
    }
    if (score < 0) {
      c = 0;
    }
    fill(c);
    rect(x, y, 15, score*4);
    noLoop();

    //println(score);
    println(titolo);
  }
}