size(600,600);

int x = 5;
int y = 5;
int rectw = 5;
int recth = 5;

for(int d = 0; d < width; d += 5){
  noStroke();
  rect(x+d, y+d, rectw, recth);
}