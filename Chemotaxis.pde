Bacteria max;
Bacteria[] kinza = new Bacteria[100];
void setup()   
{     
  //initialize bacteria variables here
  size(500,500);
  max = new Bacteria(250,250);
  for (int i = 0; i < kinza.length; i++) {
    kinza[i] = new Bacteria((int)(Math.random()*499),(int)(Math.random()*499));
  }
}   
void draw()   
{    
  //move and show the bacteria
  background(200);
  max.move();
  max.show();
  for (int i = 0; i < kinza.length; i++) {
    kinza[i].move();
    kinza[i].show();
  }
}  

class Bacteria    
{     
  int myX, myY,myC, size;
  Bacteria(int x, int y) {
    myC = color(0,(int)(Math.random()*255),0);
    myX = x;
    myY = y;
    size = (int)(Math.random()*50);
  }

  void show() {
    fill(myC);
    ellipse(myX, myY, size, size);
  }

  void move() {
    if (mouseX > myX)
      myX += Math.random()*5;
    else
      myX -= Math.random()*5;
    if (mouseY > myY)
      myY += Math.random()*5;
    else
      myY -= Math.random()*5;
  }
}
