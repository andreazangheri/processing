
Table stateData;
Table xData;//oggetto Table, racchiude dati in righe e colonne
Table annoData;
int rowCount;//numero righe del file csv
int row;
    float longitudine;
    float latitudine;
    float magnetudo;
    float profondita;
    float ANNO;
    float alt;
    
int x;
int y;
int X;
int Y;
PImage italia; 
PFont bold;//aggiunta la font
PFont light;
void setup() {
   
  size(900, 650);
   
  smooth();
  background(#36393B);

  italia = loadImage("Italiamap.png");
  italia.resize(436,550);
  image(italia, 0, 100);
  bold = loadFont("GTHaptikMedium-30.vlw");//aggiunta la font
  light = loadFont("Foro-Light-14.vlw");//aggiunta la font
  
  
  stateData = loadTable("LATELONGORARI.csv");
  rowCount = stateData.getRowCount();//dà il numero di righe nel file
  println("rowCount =" + rowCount);//controllo quante sono le righe nel file
 
  //labeling
  smooth();
  textFont(bold);
  textSize(24);
  fill(114, 140, 150);
  text("COME SI MUOVE IL SISMA?", 50, 35);
  
  smooth();
  fill(226, 219, 209);
  textFont(light);
  textSize(14);
  text("i terremoti con magnitudo > 4.0 in Italia dal 1985 al 2017", 52, 55);
  //legenda
  textFont(bold);
  fill(114, 140, 150);
  textSize(16);
  text("legenda", 550, 40);
 
  noStroke();
  fill(#FAAD8E,150);
  ellipse(550, 60, 4, 4); 
  fill(#FAAD8E,150);
  ellipse(570, 60, 15, 15); 
  
  textFont(light);
  fill(226, 219, 209);
  textSize(14);
  text("intensità terremoto (magnitudo 4.0 -6.5)", 600, 63);
  
  fill(#FAAD8E,150);
  ellipse(550, 85,10, 10); 
  fill(#FAAD8E,20);
  ellipse(570, 85, 10, 10); 
  textFont(light);
  fill(226, 219, 209);
  textSize(14);
  text("profondità terremoto", 600, 88);
  
   
  String a = "1985 1990";
  textFont(bold);
  fill(226, 219, 209);
  textSize(12);
  text(a, 550, 600, 40, 50);
  
  String b = "1990 1995";
  textFont(bold);
  fill(226, 219, 209);
  textSize(12);
  text(b, 600, 600, 40, 50);
  
  String c = "1995 2000";
  textFont(bold);
  fill(226, 219, 209);
  textSize(12);
  text(c, 650, 600, 40, 50);
  
  String d = "2000 2005";
  textFont(bold);
  fill(226, 219, 209);
  textSize(12);
  text(d, 700, 600, 40, 50);
  
  String e = "2005 2010";
  textFont(bold);
  fill(226, 219, 209);
  textSize(12);
  text(e, 750, 600, 40, 50);
  
  String f = "2010 2017";
  textFont(bold);
  fill(226, 219, 209);
  textSize(12);
  text(f, 800, 600, 40, 50);
  
  }

void draw() {
  
  smooth();
 //per ottenere pallini uno alla volta  
  if (row  < 650) {
     row = row + 1;
     scale(1, -1);//altrimenti il testo è rovesciato
     translate(0, -height);
     float longitudine = stateData.getFloat(row, 1);
    //println("la longitudine è"+longitudine);
     float latitudine = stateData.getFloat(row, 0);
     // println(latitudine);
     float magnetudo = stateData.getFloat(row, 3);
     float profondita = stateData.getFloat(row, 2);
     float x = map(longitudine, 6348, 18989, 0, 436);//rimappo i valori per associarli alla mia scala 
     println("la x è"+x);
     float y = map(latitudine, 35080, 47722, 0, 550);//rimappo i valori per associarli alla mia scala 
     float raggio = map(magnetudo, 40 , 65 , 4, 15);
     float  transp= map(profondita, 24 , 6444 , 150, 10);
     println("transp"+transp);
     delay(100);
     noStroke();
     String anno = stateData.getString(row, 4);
   
    //testo della data terremoto
    pushMatrix();
     scale(1, -1);//altrimenti il testo è rovesciato
     translate(0, -height);
    //per nascondere la sovrapposizione delle date.
     fill(#36393B);
     noStroke();
     rect(0,70,450,25);
   
     textFont(bold);
     textAlign(CENTER);
     textSize(20);
     fill(114, 140, 150);
     text(anno,150,90 );
    popMatrix();
    
      
    //per dare un colore diverso ad ogni gruppo d anni
     if (row  < 75) {
       fill(#FAAD8E,transp);
       ellipse(x, y, raggio, raggio);
       
      } else if ( row > 75 && row < 143){
       fill(#F7D683,transp);
       ellipse(x, y, raggio, raggio);
       
      }  else if ( row>143 && row < 225){
       fill(165, 152, 140,transp);
       ellipse(x, y, raggio, raggio);
        
      } else if (row > 225 && row < 320){
       fill(226, 219, 209,transp);
       ellipse(x, y, raggio, raggio); 
       
      } else if (row > 320 && row < 416){
       fill(#80BCA3  ,transp);
       ellipse(x, y, raggio, raggio); 
      
      } else if (row>416 && row < 650){
       fill(#008C9E,transp);
       ellipse(x, y, raggio, raggio);
        
   
    
    
  }
  //terremoti 1985-1990
 
   if (row < 75){
     float alt = map (row, 1, 75, 1, 75);
     fill(#FAAD8E);
     ellipse(570, 80+alt*2, raggio, raggio);
    
   }
  //per visualizzare a lato e comparare i dati
    //terremoti 1990-1995
   if (row>75 && row < 143){
     float alt = map (row, 75, 143, 1, 68);
     fill(#F7D683);
     ellipse(620, 80+alt*2, raggio, raggio);
    
   }
   
    //terremoti 1995-2000
   if (row>143 && row < 225){
     float alt = map (row, 143, 225, 1,82);
     fill(165, 152, 140);
     ellipse(670, 80+alt*2, raggio, raggio);
   }
      //terremoti 2000-2005
   if (row > 225 && row < 320){
     float alt = map (row, 225, 320, 1, 95);
     fill(226, 219, 209);
     ellipse(720, 80+alt*2, raggio, raggio);
   }
   
    //terremoti 2005-2010
  if (row>320 && row < 416){
     float alt = map (row, 320, 416, 1, 96);
     fill(#80BCA3);
     ellipse(770, 80+alt*2, raggio, raggio);
    
   }
   
    //terremoti 2010-2017
  if (row>416 && row < 650){
     float alt = map (row, 416, 650, 1, 234);
     fill(#008C9E);
     ellipse(820, 80+alt*2, raggio , raggio);
     
   }
  
  }
}