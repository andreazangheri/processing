int[] dati;

void setup(){
 size(400, 400);
 //carico il file di testo
 String[] numeri = loadStrings("numbers.txt");
 //converto la stringa in un array di numeri divisi da virgola
 dati = int(split(numeri[0], ','));
 println(dati);
}

void draw(){
 background(255);
 noStroke();
 for(int i = 0; i < dati.length; i++){
  fill(dati[i]);
  rect(i*40, 0, 40, dati[i]);
 }
}