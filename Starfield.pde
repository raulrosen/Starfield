Particle [] raul = new Particle[500];
PImage photo;
void setup()
{
	
	size (700,700);
	background (0);
	for (int i=2; i<raul.length; i++)
 	{
  	raul[i]= new NormalParticle();
  	}
  	raul[0] = new OddballParticle();
  	raul[1] = new JumboParticle();
  	raul[2] = new JumboParticle();
  	raul[3] = new OddballParticle();
}

void draw()
{
	background (0);
	if (keyPressed == true && key== 'c')
  	{
  		image(photo, 250, 250);
  	}
	for(int i=0; i<raul.length; i++)
	{
  	raul[i].move();
  	raul[i].show();
  	}
}


interface Particle {
	public void show();
	public void move();
}

class NormalParticle implements Particle
{
	double x,y,mySpeed,myAngle;
	int r,g,b;
	NormalParticle()
	{
		photo = loadImage("images.jpg");
		x = 350.0;
		y = 350.0;
		mySpeed= (Math.random());
		myAngle= (Math.random()*(Math.PI*2));
		r=(int)(Math.random()*255);
		g=(int)(Math.random()*255);
		b=(int)(Math.random()*255);
	}

	public void move()
	{
		x=x+(Math.cos(myAngle)*mySpeed);
		y=y+(Math.sin(myAngle)*mySpeed);
	}
	public void show()
	{
		fill (r, g , b);
		ellipse ((int)x,(int)y,5,5);
	}
}
class OddballParticle implements Particle
{
	double x,y,mySpeed,myAngle;
	int r,g,b;
	OddballParticle()
	{
		x = 350.0;
		y = 350.0;
		mySpeed= (Math.random());
		myAngle= (Math.random()*(Math.PI*2));
		r=(int)(Math.random()*255);
		g=(int)(Math.random()*255);
		b=(int)(Math.random()*255);
	}

	public void move()
	{
		x=x+(Math.cos(myAngle)*mySpeed);
		y=y+(Math.sin(myAngle)*mySpeed);
	}
	public void show()
	{
		fill (r, g , b);
		ellipse ((int)x,(int)y,15,15);
	}
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		fill (r, g , b);
		ellipse ((int)x,(int)y,50,50);
	}
}

