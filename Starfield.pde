Particle[] parts = new Particle[1000];
boolean start = false;
void setup()
{
  size(400,600);
  for (int i = 0; i < parts.length; i++)
  {
    parts[i] = new Particle();
    parts[0] = new OddballParticle();
    
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < parts.length; i++)
  {
    parts[i].show();
    parts[i].move();
    
  }
  
}


class Particle
{
  double myX,myY,mySpeed,myAngle;
  int myColor;
  Particle()
  {
    
    myX = myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  
  }
  void move()
  {
    myX += myAngle + mySpeed;
    myY += myAngle + mySpeed;
  }
  void show()
  {
    ellipse((float)myX,(float)myY,5,5);
    
  }
}

class OddballParticle extends Particle
{
  void move()
  {
    myX += myAngle - mySpeed;
    myY += myAngle - mySpeed;
  }
  
  void show()
  {
    ellipse ((float)myX,(float)myY,5,5);
  }
  
}
