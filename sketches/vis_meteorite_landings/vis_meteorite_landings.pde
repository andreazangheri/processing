import controlP5.*;


Table stateData;
int rowCount; 
PImage Planisfero;
PFont font;

ControlP5 cp5;

boolean pulsante0 = false;
boolean pulsante = false;
boolean pulsante1 = false;
boolean pulsante2 = false;
boolean pulsante3 = false;
boolean pulsante4 = false;
boolean pulsante5 = false;
boolean pulsante6 = false;
boolean pulsante7 = false;
boolean pulsante8 = false;
boolean pulsante9 = false;



void setup(){
size(1200, 600); 
stateData = loadTable ("Meteorites_landings.csv", "header");  
rowCount = stateData.getRowCount(); 
Planisfero = loadImage("Planisfero_Stati.jpg"); 
println("rowCount =" + rowCount); 
font = createFont("EmigreTen-14.vlw", 11);
smooth();

  cp5 = new ControlP5(this);
  
  cp5.addToggle("pulsante9")
     .setPosition(60, 340)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2010")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;
  
  cp5.addToggle("pulsante8")
     .setPosition(20, 340)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2009")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;
  
  cp5.addToggle("pulsante7")
     .setPosition(100, 300)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2008")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;
  cp5.addToggle("pulsante6")
     .setPosition(60, 300)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2007")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;
  cp5.addToggle("pulsante5")
     .setPosition(20, 300)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2006")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;
  cp5.addToggle("pulsante4")
     .setPosition(100, 260)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2005")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;
  cp5.addToggle("pulsante3")
     .setPosition(60, 260)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2004")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;
  cp5.addToggle("pulsante2")
     .setPosition(20, 260)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2003")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;
  cp5.addToggle("pulsante1")
     .setPosition(100, 220)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2002")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;
   cp5.addToggle("pulsante")
     .setPosition(60, 220)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2001")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;
   cp5.addToggle("pulsante0")
     .setPosition(20, 220)
     .setSize(20,20)
     .setColorLabel(55)
     .setLabel("2000")
     .setColorLabel(color(255))
     .setColorBackground(color(100))//colore a riposo
     .setColorForeground(#A0A0A0)//colore on hover
     .setColorActive(color(200))//colore se selezionato
     ;  
   }

void draw() {
image(Planisfero, 0, 0); 
Planisfero.resize(1200,600); 
noStroke();
textAlign(LEFT);
textSize(14);
fill(255);
text("METEORITES LANDINGS", 20, 20);
text("NASA DATASET", width-120, 20);


fill(109);
rect(64, 220, 20, 20);


//legenda
fill(255);
textSize(12);
text("Mass (g)",20,405);
text("Years",20,210);

textSize(10);
text(">10",50,428);
text(">100",50,448);
text(">1.000",50,468);
text(">10.000",50,488);
text(">100.000",50,508);
text(">1.000.000",50,528);

fill(#FFD802);
rect(20,415, 20, 20);
fill(#FEB105);
rect(20,435,20,20);
fill(#FE8908);
rect(20,455,20,20);
fill(#FD610B);
rect(20,475,20,20);
fill(#FD3A0F);
rect(20,495,20,20);
fill(#FC1212);
rect(20,515,20,20);

for(int row = 0; row < rowCount; row++){
  //String meteorite = stateData.getString(row,0);
  float latitudine = stateData.getFloat(row,3); 
  float longitudine = stateData.getFloat(row,4);
  float anni = stateData.getFloat(row,2);
  //float massa = stateData.getFloat(row,1);
  float colore = stateData.getFloat(row,5);
  float x = map(longitudine, -180, 180, -600, 600); 
  float y = map(latitudine, -90, 90, -300, 300); 
  float z = 6;

pushMatrix();

  translate(width/2, height/2);
  scale(1,-1);
  
  if(colore==1){
    fill(#FFD802);
  }
  
  if(colore==2){
    fill(#FEB105);
  }
  
  if(colore==3){
    fill(#FE8908);
  }
  
  if(colore==4){
    fill(#FD610B);
  }
  
  if(colore==5){
    fill(#FD3A0F);
  }
  
  if(colore==6){
    fill(#FC1212);
  }
  
  if(pulsante9==true && anni==2010) {
    ellipse(x, y, z, z);
  }
  
  if(pulsante8==true && anni==2009) {
    ellipse(x, y, z, z);
  }
  
  if(pulsante7==true && anni==2008) {
    ellipse(x, y, z, z);
  }
  
   if(pulsante6==true && anni==2007) {
    ellipse(x, y, z, z);
  }
  
  if(pulsante5==true && anni==2006) {
    ellipse(x, y, z, z);
  }
  
  if(pulsante4==true && anni==2005) {
    ellipse(x, y, z, z);
  }
  
   if(pulsante3==true && anni==2004) { 
    ellipse(x, y, z, z);
  }
  
  if(pulsante2==true && anni==2003) {
    ellipse(x, y, z, z);
  }
  
  
  if(pulsante1==true && anni==2002) {
    ellipse(x, y, z, z);
  }
  
  if(pulsante==true && anni==2001) { 
    ellipse(x, y, z, z);
  }
  
  if(pulsante0==true && anni==2000) {
    ellipse(x, y, z, z);
  }
 popMatrix();
 }
}

  
  