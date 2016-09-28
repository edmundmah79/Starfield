
void setup()
{
	//your code here
}
void draw()
{
	
}
class NormalParticle
{
	//your code here
	double pX, pY, pSpeed, pTheta;
	int pColor;
	void move()
	{
		pX = pX + Math.cos(pTheta)*pSpeed;
		pY = pY + Math.sin(pTheta)*pSpeed;   
	}
	void show()
	{
		ellipse(pX,pY, 10,10)
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

