size(500,500);
background(240);

for(int x = 10; x < width; x += 10){
noFill();
stroke(0);
ellipseMode(CENTER);
ellipse(width/2,height/2, x, x);
}