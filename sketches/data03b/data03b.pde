Table table;

void setup() {
  size(600, 600);
  table = loadTable("rotten-tomatoes.csv", "header");
}

void draw() {
  for (int i = 0; i<table.getRowCount(); i++) {

    // Access each row of the table one at a time, in a loop.
    TableRow riga = table.getRow(i);
    int n = riga.getInt("identificativo");
    String titolo = riga.getString("titolo");
    int score = riga.getInt("punteggio");

    rect(10+(i*5), height-30, 5, -(score*2));
  }
}