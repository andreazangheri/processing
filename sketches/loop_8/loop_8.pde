void setup() {
  size(300, 300);
  background(0);
}

void draw() {
    
  for(int l = 0; l < width; l+=10){
    for(int a = 0; a < height; a+=10){
      fill(random(255), random(255), random(255), 100);
      noStroke();
      rect(l, a, 10, 10); 
    }     
  }

}