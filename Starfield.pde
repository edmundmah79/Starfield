Particle[] stars;
void setup()
{
	//your code here
	size(500,500);
	background(0);
	stars = new Particle[200];
	for(int i = 0; i < 100; i++)
	{
		if(i % 20 == 0)
		{
			stars[i] = new OddballParticle();
		}
		else if(i % 25 == 0)
		{
			stars[i] = new JumboParticle();
		}
		else 
		{
			stars[i] = new NormalParticle();
		}	
	}
}
void draw()
{
	background(0);
	for(int i = 0; i < 100; i ++)
	{
		stars[i].move();
		stars[i].show();
	}
}
class NormalParticle implements Particle 
{
	//your code here
	double pX, pY, pSpeed, pTheta;
	int pColor;
	NormalParticle() 
	{
		pX = 250;
		pY = 250;
		pSpeed = (Math.random()*5)-2;
		pTheta = (Math.random()*2*Math.PI);
		pColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	public void move()
	{
		pX = pX + Math.cos(pTheta)*pSpeed;
		pY = pY + Math.sin(pTheta)*pSpeed;   
		if(pX < 0 || pX > 600 && pY < 0 || pY > 600)
		{
			pX = mouseX;
			pY = mouseY;
		}
	}
	public void show()
	{
		strokeWeight(1);
		stroke(pColor);
		ellipse((float)pX,(float)pY, 10,10);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle //uses an interface
{
	double pX, pY, pSpeed, pTheta;
	int pColor;
	OddballParticle() 
	{
		pX = 250;
		pY = 250;
		pSpeed = (Math.random()*7)-3;
		pTheta = (Math.random()*2*Math.PI);
		pColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	public void move()
	{
		pX = pX + Math.sin(pTheta)*pSpeed + (Math.random()*4)-2;
		pY = pY + Math.cos(pTheta)*pSpeed + (Math.random()*4)-2;   
		if(pX < 0 || pX > 600 && pY < 0 || pY > 600)
		{
			pX = mouseX;
			pY = mouseY;
		}
	}
	public void show()
	{
		fill(pColor);
		noStroke();
		triangle((float)(pX),(float)(pY),(float)(pX-3.2492),(float)(pY+10.5146),(float)(pX+3.2492),(float)(pY+10.5146));	}
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
	public void show()
	{
		ellipse((float)pX,(float)pY, 30,30);
	}
}

		//line((float)(pX),(float)(pY),(float)(pX-1.545),(float)(pY+4.755));
		//line((float)(pX),(float)(pY),(float)(pX+1.545),(float)(pY+4.755));
		//line((float)(pX+1.545),(float)(pY+4.755),(float)(pX-2.5),(float)(pX+1.816));
		//line((float)(pX-1.545),(float)(pY+4.755),(float)(pX+2.5),(float)(pX+1.816));
		//line((float)(pX+2.5),(float)(pX+1.816),(float)(pX-2.5),(float)(pX+1.816));