
 color[] palette = {#7AD03A, #0E1B29, #87930B, #D9DA37, #9BC3AE};
 
  size(650,300);
  background(palette[1]);
  smooth();

int[] fibonacci = {0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610};

for(int i = 0; i < fibonacci.length; i++){
  float x = fibonacci[i];
  noStroke();
  fill(palette[0],40);
  ellipse(x, height/2, 10,10);
}