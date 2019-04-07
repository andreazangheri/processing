//se il file non avesse intestazione: Table table = loadTable("rotten-tomatoes.csv");
//ma ce l'ha, quindi:
Table table = loadTable("rotten-tomatoes.csv", "header");
//println(table);
//per ricavare tutti i dati di tutte le righe serve un ciclo for

for (int i = 0; i < table.getRowCount(); i++) {
  // Access each row of the table one at a time, in a loop.
  TableRow riga = table.getRow(i);
  int n = riga.getInt("identificativo");
  String titolo = riga.getString("titolo");
  int score = riga.getInt("punteggio");
  println(score);
}