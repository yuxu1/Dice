Die one;
Die two;
void setup()
{
	size(300,300);
	background(0);
	noStroke();
	noLoop();
}
void draw()
{
	background(0);
	one=new Die(75, 125);
	two=new Die(175, 125);
	one.roll();
	one.show();
	two.roll();
	two.show();
	fill(255,0,0);
	textSize(36);
	int totalDots=one.numDots + two.numDots;
	text("Total Dots: " + totalDots, 25, 275);
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int numDots, myX, myY;
	Die(int x, int y) 
	{
		myX=x;
		myY=y;
		numDots=0;
	}
	void roll()
	{
		numDots=(int)(Math.random()*6+1);
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 50, 50);
		if (numDots==1)
		{
			fill(0);
			ellipse(myX+25, myY+25, 15, 15);
		}
		else if (numDots==2)
		{
			fill(0);
			ellipse(myX+15, myY+25, 12, 12);
			ellipse(myX+35, myY+25, 12, 12);
		}
		else if (numDots==3)
		{
			fill(0);
			ellipse(myX+10, myY+10, 12, 12);
			ellipse(myX+25, myY+25, 12, 12);
			ellipse(myX+40, myY+40, 12, 12);
		}
		else if(numDots==4)
		{
			fill(0);
			ellipse(myX+15,myY+15,12,12);
			ellipse(myX+15,myY+35,12,12);
			ellipse(myX+35,myY+15,12,12);
			ellipse(myX+35,myY+35,12,12);
		}
		else if(numDots==5)
		{
			fill(0);
			ellipse(myX+10,myY+10,12,12);
			ellipse(myX+10,myY+40,12,12);
			ellipse(myX+40,myY+10,12,12);
			ellipse(myX+40,myY+40,12,12);
			ellipse(myX+25,myY+25,12,12);
		}
		else
		{
			fill(0);
			ellipse(myX+15,myY+10,10,10);
			ellipse(myX+15,myY+25,10,10);
			ellipse(myX+15,myY+40,10,10);
			ellipse(myX+35,myY+10,10,10);
			ellipse(myX+35,myY+25,10,10);
			ellipse(myX+35,myY+40,10,10);
		}
	}
}
