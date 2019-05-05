import geomerative.*;

RFont f;
RShape grp;
RPoint[] points;

void setup(){
  size(600,400);
  frameRate(24);
  
  background(0);
  stroke(255);
  
  // VERY IMPORTANT: Always initialize the library in the setup
  RG.init(this);
  
  //  Load the font file we want to use (the file must be in the data folder in the sketch floder), with the size 60 and the alignment CENTER
  grp = RG.getText("Hello world!", "Frutiger.ttf", 72, CENTER);
}

void draw(){
  background(0);
  
  translate(width/2, 3*height/4);
  
  // Draw the group of shapes
  noFill();
  stroke(255);
  RG.setPolygonizer(RG.ADAPTATIVE);
  grp.draw();
  
  
}