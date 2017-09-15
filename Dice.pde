void setup()
{
  size(1000, 1000);
  noLoop();
}
void draw()
{
  for (int y = 0; y<=1000; y+=50)
  {
    for (int x = 0; x<=1000; x+=40)
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
    int myX, myY;
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
      rect(myX, myY, 30, 30, 8);
    }
  }