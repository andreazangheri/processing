//Scatterplot (usare appended_data come base e modificarlo)

color[] palette = {#A7E3E5, #0E1B29, #87030B, #D9DA37, #9BC3AE};
PFont font;//aggiunta la font

Table stateData;
int rowCount;

void setup() {
  size(630, 630);
  stateData = loadTable("gdp-f.tsv", "header");
  rowCount = stateData.getRowCount();
  println("rowCount =" + rowCount);
  font = createFont("Karla-Bold-13.vlw", 11);//aggiunta la font
  smooth();
}

void draw() {
  
  background(palette[0]);
  textFont(font);
  
  //linee e label per l'asse delle X
  textAlign(CENTER);
  stroke(70);
  line(30, 610, 600, 610);//linea di base per le X
  text("GDP/Fertility rate", width/2, 20);
  for(int i = 0; i < 7; i++) { //questo loop serve per i numeri di riferimento sull'asse delle x (quindi vanno inseriti i valori minimi e massimi di x)
    fill(60);
    text(i, i*(570/7)+30, 620);//scrivi i numeri da 0 a 7, x=600-30/numero di i)
  }
  
  //linee e label per l'asse delle Y
  textAlign(RIGHT);
  stroke(70);
  line(30, 30, 30, 610);//linea di base per le Y
  for(int i = 0; i < 699; i+=30) { //questo loop serve per i numeri di riferimento sull'asse delle y (i+=10 perché non voglio tutti e 133 i numeri, ma di 10 in 10)
    float y = map(i, 0, 699, 610, 30);
    fill(60);
    text(i, 25, y);//scrivi i numeri da 0 a 699 di 30 in 30, y=mapping di i secondo sistema di riferimento della finestra
  }
  
  //non mi serve flippare perché uso map (vd. infra)
  //scale(1, -1);
  //translate(0, -height);
  for(int row = 0; row < rowCount; row++) {
    String state = stateData.getString(row, 0);//dammi i valori della colonna 0 (ovvero gli stati)
    float fertility = stateData.getFloat(row, 2);//dammi i valori della colonna 1 (ovvero il fertility rate)
    float gdp = stateData.getFloat(row, 1);//dammi i valori della colonna 2 (ovvero il gdp)
    float x = map(fertility, 0, 7, 0, 600);//rimappo i valori per associarli alla mia scala (cioè a size)
    float y = map(gdp, 4, 699, 600, 50);//rimappo i valori per associarli alla mia scala (cioè a size)
    noStroke();
    fill(palette[2], 130);
    ellipse(x, y, 10, 10);//crea i pallini
  }
  
}