//Inserire i dati in embed

color[] palette = {#0E1B29, #9BC3AE};

size(650, 300);
background(palette[int(random(2))]);
smooth();

int[] fibonacci = {0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610};

for(int i = 0; i < fibonacci.length; i++){
    float x = fibonacci[i]; //per avere la coordinata di ogni punto, basata su ogni item nell'array
    noStroke();
    fill(palette[0], 40);
    ellipse(x, height/2, 10, 10);
  }