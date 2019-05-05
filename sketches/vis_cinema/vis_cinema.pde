PFont font;

Table stateData;
int rowCount;

PImage img;
PImage img1;


void setup () {
  fullScreen();
  stateData = loadTable("Filmz - Foglio4(44).csv", "header");
  rowCount = stateData.getRowCount();
  println ("rowCount =" + rowCount);
  font = createFont ("SansSerif-48.vlw", 10, true);
  img = loadImage("barra.png");
  img1 = loadImage("ellissi02.png");
  smooth(5);
}

void draw () {
  background (250);
  textFont (font);
  colorMode(HSB);

  //leggenda
  image(img, 550, height-55, width/5, 30);
  image(img1, 950, height-53, width/8.7, 25);
  stroke(0, 100);
  noFill();
  ellipse(1255, height-45, 7, 7);
  noStroke();
  fill(0, 150);
  textAlign(LEFT);
  text("Media dei voti di IMDB e Rotten Tomatoes (da 0 a 5)", 550, height-60);
  text("Voto personale (da 0 a 5)", 950, height-60);
  text("Valutazione assente", 1250, height-60);
  textSize(11.5);
  fill(120, 170, 100, 230);
  //titolo
  text("// ROBA DA CINEFILI //", 130, height-45);
  textSize(10);
  //sottotitolo
  text("     80 anni di film in 21", 130, height-30);

  //per limitare lo "scale" alla visualizzazione
  pushMatrix();
  translate(50, 0);
  scale(0.9, 0.9);
  //disegno gli assi
  fill(0);
  textAlign (CENTER);
  stroke (20);
  line (95, height-35, width+20, height-35); //asse delle x
  line (95, 20, width+20, 20);

  for (int i = 1932; i < 2016; i+=5) {
    float x = map (i, 1932, 2016, 105, width+10); //mappatura con le date
    fill(0);
    text (i, x, height-15);
    println(x);
  }

  //linee guida per registi-cerchi
  float w = 36;
  while (w <= height-50) {  
    stroke(235);
    noFill();
    line (95, w, width+20, w);
    w = w + 23.194;
  }

  stroke (20);
  line(95, height-35, 95, 20); //asse delle y
  line(width+20, height-35, width+20, 20);

  for (int row = 0; row < rowCount; row++) {
    String film = stateData.getString(row, 0);
    float n_regista = stateData.getFloat(row, 3);
    String regista = stateData.getString(row, 2);
    float anno = stateData.getFloat(row, 1);
    float personal = stateData.getFloat(row, 4);
    float media = stateData.getFloat(row, 7);
    float x = map(anno, 1932, 2016, 105, width+10);
    float y = map(n_regista, 0, 36, height-50, 15);
    float z = map(personal, 0, 9, 9, 45);

    textAlign(RIGHT);
    fill(0);

    //questo if mi permette di agire solo sui pallini della categoria "Altri"
    if (n_regista < 1) {
      text ("Altri", 92, height-50);

      //questo if mi permette di agire solo sui cerchi dei film cui non ho dato un voto
      if (personal == 9) {
        stroke(0, 100);
        noFill();
        ellipse (x, y, z-38, z-38);

        //questo else riguarda tutti i cerchi dei film
        //che hanno un voto, il colore cambia in base alla media dei voti di IMDB e R.T.
        //e il loro diametro varia in base al voto personale
      } else {
        noStroke();
        fill(120, 55*media, 100, 100);
        ellipse(x, y, z, z);
      }

      //cerchi dei film di registi preferiti
      //e di registi di cui ho visto più di tre film
    } else {
      text (regista, 92, y);

      //film senza voto
      if (personal == 9) {
        stroke(0, 100);
        noFill();
        ellipse (x, y, z-38, z-38);

        //targhette film senza voto
        if (dist(x, y, mouseX/0.9-50, mouseY/0.9) < ((z-38)/2)) {
          pushMatrix();
          fill (0);
          textAlign(CENTER);
          text (film, x-((z-38)/3), (y-((z-38)/2)));
          popMatrix();
        }

        //film con il voto
      } else {
        noStroke();
        fill(120, 55*media, 100, 100);
        ellipse(x, y, z, z);

        //targhette film  con il voto
        if (dist(x, y, mouseX/0.9-50, mouseY/0.9) < (z/2)) {
          pushMatrix();
          fill (0);
          textAlign(CENTER);
          text (film, x-z/3, (y-(z/2)));
          popMatrix();
        }
      }
    }
    smooth();
  }//fine for

  popMatrix();

  //spazio per la spiegazione
  if (mouseX > width-10 && mouseY < height/5) {
    fill(120, 180, 100, 150);
    beginShape();
    vertex(width*3.5/4, 0);
    vertex(width*3.5/4-10, 10);
    vertex(width*3.5/4-10, height/5);
    vertex(width*3.5/4, height/5+10);
    endShape();
    fill(120, 180, 100, 200);
    rect(width*3.5/4, 0, width*3.5/4, 335);
    fill(255);
    textAlign(LEFT);
    String t= "Questa data visualization raccoglie i film che ho visto in ordine di età (dal 1932 al 2016). L'obiettivo era di avere una visione d'insieme: quali sono i registi che ho seguito di più?, qual è la mia opinione rispetto a quella delle fonti ufficiali?, in che arco di tempo si localizzano i film? Il dato più evidente, nonché interessante, è che la maggior parte dei film che ho visto va dagli anni '80 ad oggi. Poiché il labeling della categoria 'Altri' era illegibile proprio a causa della densità dei dati, ho deciso di ometterlo: il dato si era trasformato da qualitativo in quantitativo.";
    text(t, width*3.5/4+12, 12, 157, 350);
  } else {
    fill(120, 180, 100, 150);
    beginShape();
    vertex(width, 0);
    vertex(width-10, 10);
    vertex(width-10, height/5);
    vertex(width, height/5+10);
    endShape();
  }
}//fine draw