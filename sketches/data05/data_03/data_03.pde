
Table table;

  void setup(){
  size(800,800);
  
  table = loadTable("rotten-tomatoes.csv", "header");
  
  }
//se il file non avesse intestazione; Table table = loadTable("rotten-tomatoes.csv");

//println(table);
//per ricavare tutti i dati di tutte le righe serve un ciclo for


 void draw(){
  
  for(int i = 0; i < table.getRowCount(); i++){
  
  //access each row in the table one at a time
  
  TableRow riga = table.getRow(i);
  int n = riga.getInt("identificativo");
  String titolo = riga.getString("titolo");
  int score = riga.getInt("punteggio");
  println(score);
  fill(constrain(score,0,100));
  
  rect(10+(i*5), height/2, 5, score*-2);
  
  }
 }