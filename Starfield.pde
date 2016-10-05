NormalParticle[] stars;
void setup()
{
	//your code here
	size(500,500);
	stars = new NormalParticle[100];
	for(int i = 0; i < 100; i++)
	{
		stars[i] = new NormalParticle();
	}
}
void draw()
{
	background(255);
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
		fill(pColor);
		noStroke();
		triangle((float)(pX),(float)(pY),(float)(pX-3.2492),(float)(pY+10.5146),(float)(pX+3.2492),(float)(pY+10.5146));
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle  //uses an interface
{
	double pX, pY, pSpeed, pTheta;
	int pColor;
	OddballParticle() 
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
		fill(pColor);
		noStroke();
		ellipse((float)pX,(float)pY, 10,10);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}
