Table table;

void setup() {
  size(600, 600);
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

    fill(score*3, 90, 90);
    stroke(200);
    rect(10+(i*5), 100, 5, score*2);
  }
}