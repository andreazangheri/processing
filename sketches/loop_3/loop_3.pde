size(500,500);
background(240);

for(int x = width; x > 10; x -= 10){
fill(x,128,0);
ellipseMode(CENTER);
ellipse(width/2,height/2, x, x);
}