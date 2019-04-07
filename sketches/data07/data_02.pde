int[] dati;

void setup(){
  size(400,400);
  background(255);
  String[] numeri = loadStrings("numbers.txt");
  
  dati = int(split(numeri[0], ',')); //split() function breaks a String into pieces
  println(dati);
  
}

void draw(){
  background(255);
  noStroke();
  for(int i = 0; i < dati.length; i++){
     fill(dati[i]); 
     rect(i*40,0,40,dati[i]);
  }
}