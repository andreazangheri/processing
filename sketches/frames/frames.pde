PImage photo;
PImage photo1;
import processing.video.*;
import controlP5.*;
//import g4p_controls.*;
Capture video;
PFont font;
//int pic;
int time_left = 3000;        
int last_millis;
///
boolean paused=false;
int start = 0;
int s = second();
//////ui
ControlP5 cp5;
Accordion accordion;

Slider abc;
/////////



void setup() {
  last_millis = millis();
  //font=loadFont("Titillium-Bold-48.vlw");
  //photo = loadImage(“ABAlogo2.png”);
  //photo1 = loadImage(“gradiente02.png”);
  background(0);
  frameRate(24);
  fullScreen();

  video = new Capture(this, width, height);
  video.start();
}

void draw() {
  if (!paused) {
    //timer();
    video.read();
    video.loadPixels();
    ////////////G1//////////////
    int sx1 = (int)random(500, 1000);
    int sy1 = (int)random(100, 800);
    int dx1 = (int)random(300, 1200);
    int dy1 = (int)random(1200, 500);

    int Sx1 = (int)random(0, 1400)+100;
    int Sy1 = (int)random(0, 1000)+100;
    int Dx1 = (int)random(100, 500)+50;
    int Dy1 = (int)random(300, 800)+50;

    ////////////G2//////////////
    int sx2 = (int)random(0, 1400);
    int sy2 = (int)random(0, 1000);
    int dx2 = (int)random(100, 500);
    int dy2 = (int)random(300, 800);

    int Sx2 = (int)random(0, 1400)+100;
    int Sy2 = (int)random(0, 1000)+100;
    int Dx2 = (int)random(100, 500)+50;
    int Dy2 = (int)random(300, 800)+50;

    ////////////G3//////////////
    int sx3 = (int)random(0, 1400);
    int sy3 = (int)random(0, 1000);
    int dx3 = (int)random(100, 500);
    int dy3 = (int)random(300, 800);

    int Sx3 = (int)random(0, 1400)+100;
    int Sy3 = (int)random(0, 1000)+100;
    int Dx3 = (int)random(100, 500)+50;
    int Dy3 = (int)random(300, 800)+50;
    
    ////////////G4//////////////
    int sx4 = (int)random(0, 1400);
    int sy4 = (int)random(0, 1000);
    int dx4 = (int)random(100, 500);
    int dy4 = (int)random(300, 800);

    int Sx4 = (int)random(0, 1400)+100;
    int Sy4 = (int)random(0, 800)+100;
    int Dx4 = (int)random(100, 500)+50;
    int Dy4 = (int)random(300, 800)+50;
    
    ////////////g5////////////
    int sx5 = (int)random(0, 1400);
    int sy5 = (int)random(0, 800);
    int dx5 = (int)random(100, 500);
    int dy5 = (int)random(300, 800);

    int Sx5 = (int)random(0, 1400)+100;
    int Sy5 = (int)random(0, 800)+100;
    int Dx5 = (int)random(100, 500)+50;
    int Dy5 = (int)random(300, 800)+50;

    image(video, 0, 0, width, height);
    
    pushMatrix();
    PImage v2 =get(sx2, sy2, dx2, dy2);
    image(v2, Sx2, Sy2, Dx2, Dy2);
    popMatrix();

    ///////////////////////////////////
    pushMatrix();
    PImage v3 =get(sx3, sy3, dx3, dy3);
    image(v3, Sx3, Sy3, Dx3, Dy3);
    popMatrix();
    
    ///////////////////////////////////
    pushMatrix();
    PImage v4 =get(sx4, sy4, dx4, dy4);
    image(v4, Sx4, Sy4, Dx4, Dy4);
    popMatrix();
    
    ///////////////////////////////////
    pushMatrix();
    PImage v1 =get(sx1, sy1, dx1, dy1);
    image(v1, Sx1, Sy1, Dx1, Dy1);
    popMatrix();
    
    ///////////////////
    pushMatrix();
    PImage v5 =get(sx5, sy5, dx5, dy5);
    image(v5, Sx5, Sy5, Dx5, Dy5);
    popMatrix();
    
    // Color Overlay //
    fill(252, 238, 32, 127);
    rect(0,0,width, height);
  }
}

void keyPressed() {

  if (key == ' ' ) {
    saveFrame("img/nta-####.JPG");
    // paused=!paused;
    if ( paused=false) {
      paused=true;
      time_left = 3000;
      time_left -= ( millis() - last_millis );

      last_millis = millis();

      if (time_left < 0 ) {
        // paused=false;
        text(time_left, 20, 60);
        //paused=!paused;
      }
    }
  }
}
