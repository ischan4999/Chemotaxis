//declare bacteria variables here
Bacteria max;
void setup()   
{     
  //initialize bacteria variables here
  size(500,500);
  max = new Bacteria(250,250);
}   
void draw()   
{    
  //move and show the bacteria
  background(255);
  max.move();
  max.show();
}  

class Bacteria    
{     
  color myC;
  float myX, myY, myXspeed;
  Bacteria(float x, float y) {
    myC = color(0,255,0);
    myX = x;
    myY = y;
    myXspeed = 1;
  }

  void show() {
    fill(myC);
    ellipse(myX, myY, 20, 20);
  }

  void move() {
    if ((int)(Math.random()*2)==0)
      myX += myXspeed;
    else
      myX -= myXspeed;
    if (myX > width)
      myX = 0;
  }
}
