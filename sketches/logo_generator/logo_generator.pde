PImage img;

void setup(){
  size(512, 512);
  img = loadImage("transparent.png", "png");
}
void draw(){
  image(img, 0, 0);
}
