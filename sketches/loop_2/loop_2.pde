size(500,500);
background(240);

int x, y, spazio, lunghezza;
x = 50;
y = 50;
spazio = 10;
lunghezza = 50;

while( y <= height){
 line(x,y,x + lunghezza, y);
 y = y + spazio;
 
}