NormalParticle sue;
void setup()
{
	//your code here
}
void draw()
{
	sue = new NormalParticle();
	sue.move();
	sue.show();
}
class NormalParticle
{
	//your code here
	double pX, pY, pSpeed, pTheta;
	int pColor;
	NormalParticle() 
	{
		pX = 300;
		pY = 300;
		pSpeed = (Math.random()*5)-2;
		pTheta = (Math.random()*2*Math.PI);
	}
	void move()
	{
		pX = pX + Math.cos(pTheta)*pSpeed;
		pY = pY + Math.sin(pTheta)*pSpeed;   
	}
	void show()
	{
		fill(0,255,0);
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
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}
