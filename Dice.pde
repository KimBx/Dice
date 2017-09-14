void setup()
{
	size(300,300);
  noLoop();
}
void draw()
{
	Die bob = new Die(50,150);
  bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
	  
	}
	void show()
	{
		rect(10,10,30,30,8);
    
	}
}