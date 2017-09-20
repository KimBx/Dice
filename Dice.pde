void setup()
{
  size(300, 300);
  noLoop();
}
void draw()
{
  for (int y = 0; y<=300; y+=50)
  {
    for (int x = 0; x<=300; x+=40)
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
    num = 1;
  }
  void show()
  {
    rect(myX, myY, 30, 30, 8);
  }
}