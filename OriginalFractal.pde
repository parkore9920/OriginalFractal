public void setup()
{ 
	size(600,600);
	//noFill();
}
public void draw()
{
	fractal(300,300,600);
}
public void fractal(double x, double y, double z) 
{
	if(z<10)
	{
		fill(255,255,0);
		ellipse((float)x,(float)y,(float)z,(float)z);
	}
	else
	{
		stroke(255);
		fill(138,43,226);
		ellipse((float)x,(float)y,(float)z,(float)z);
		//System.out.println(z);
		fractal(300+z/8*sin((float)(x)),300+z/8*cos((float)(y)),z/1.1);
	}	
}