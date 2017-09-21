Die bob;
void setup()
{
  size(1920, 1080);
  noLoop();
  background(122,56,19);
}
void draw()
{
  for (int y = 0; y<=1080; y+=60)
  {
    for (int x = 0; x<=1920; x+=60)
    {
      Die bob = new Die(x, y);
      bob.show();
    }
  }
}



void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  boolean dice;
  int myX, myY, num;
  Die(int x, int y) //constructor
  {

    myX = x;
    myY = y;
  }
  void roll()
  {
  }
  void show()
  {
    int num = (int)(Math.random()*6)+1;
    fill(255);
    rect(myX, myY, 50, 50, 15);
    fill(0);
    if (num == 1)
    {
      ellipse(myX+25, myY+25, 10, 10);
    } else if (num == 2)
    {
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
    } else if (num == 3)
    {
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if ( num == 4)
    {
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if (num == 5)
    {
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (num==6)
    {
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    }
  }
}