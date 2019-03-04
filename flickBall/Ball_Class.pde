class Ball
{
  // data
  color c; 
  float diameter;
  PVector position;
  
  // constructor
  // xPos, yPos, color, diameter
  Ball(float _xPos, float _yPos, color _c, float _diameter) {
    c = _c;
    diameter = _diameter;
    position = new PVector(_xPos, _yPos);
    
    }
  
  // methods
  boolean didBonk(Ball otherBall)
  {
   float delta = 0.2;
   boolean temp = false;
   PVector me = this.position;
   PVector you = otherBall.getPosition();
   if(abs(me.x - you.x)<delta)
   {
    temp = true; 
    this.c = color(255,255,255);
   }

   return temp;
  }
  
  void reset()
  {
   c = color(0,0,random(100,255)); 
  }
  
  void update(PVector newPos)
  {
    position = newPos;
  }
  
  PVector getPosition()
  {
   return this.position; 
  }
  
  void display()
  {
   noStroke();
   fill(c);
   ellipseMode(CENTER);
   ellipse(position.x,position.y,diameter, diameter);
  }
  
   void updateAndDisplay(PVector newPos)
  {
    this.update(newPos);
    this.display();
  }
  
  void newColor()
  {
    c = color(random(100,255),0,0);
  }
 

  
  
}
