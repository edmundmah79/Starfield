NormalParticle sue;
void setup()
{
	//your code here
}
void draw()
{
	sue = new NormalParticle();
	NormalParticle.move();
	NormalParticle.show();
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
		pColor = (0,255,0);
	}
	void move()
	{
		pX = pX + Math.cos(pTheta)*pSpeed;
		pY = pY + Math.sin(pTheta)*pSpeed;   
	}
	void show()
	{
		fill(pColor);
		ellipse(pX,pY, 10,10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

