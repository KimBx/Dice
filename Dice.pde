Die casino;
void setup()
{
  size(600, 600);
  noLoop();
}
void draw()
{
  background(190, 56, 190);
  int sum = 0;
  for (int y = 0; y<=500; y+=60)
  {
    for (int x = 0; x<=550; x+=60)
    {
      Die casino = new Die(x, y);
      casino.show();
      if (casino.value < 7)
      {
        sum = sum + casino.value;
      }
    }
  }
  textSize(30);
  text("Total = " + sum,210,570);

}



void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  boolean dice;
  int myX, myY, num, value;
  Die(int x, int y) //constructor
  {
    value = (int)(Math.random()*6)+1;
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