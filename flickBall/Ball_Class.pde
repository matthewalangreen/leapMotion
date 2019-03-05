class Ball
{
  // data
  color c; 
  float diameter;
  PVector position;
  float radius;
  boolean bonking;
  
  // constructor
  // xPos, yPos, color, diameter
  Ball(float _xPos, float _yPos, color _c, float _diameter) {
    c = _c;
    diameter = _diameter;
    position = new PVector(_xPos, _yPos);
    radius = diameter/2;
    bonking = false;
    }
  
  // methods
  void didBonk(Ball otherBall)
  {
   float delta = 0.2;
   PVector me = this.position;
   PVector you = otherBall.position();
   
   // if otherBall.radius() this.radius()
   float hitDistance = otherBall.radius() + this. radius();
   float d = me.dist(you);
   if(d < hitDistance) // distance between us is less than your radius + my radius
   {
     this.bonking = true;
   }  else {
     this.bonking = false;
   }  
  }
  
   void didBonk(PVector otherObjectPosition)
  {
   float delta = 0.2;
   PVector me = this.position;
   PVector you = otherObjectPosition;
   
   // if otherBall.radius() this.radius()
   float hitDistance = this.radius();
   float d = me.dist(you);
   if(d < hitDistance) // distance between us is less than your radius + my radius
   {
     this.bonking = true;
   }  else {
     this.bonking = false;
   }  
  }
  
  void reset()
  {
   c = color(0,0,random(100,255)); 
  }
  
  void update(PVector newPos)
  {
    position = newPos;
  }
  
  PVector position()
  {
   return this.position; 
  }
  
  float radius()
  {
   return this.radius; 
  }
  
  boolean bonkStatus()
  {
   return this.bonking; 
  }
  
  void display()
  {
   noStroke();
   if(this.bonking)
   {
     fill(255,255,255);
     strokeWeight(2);
     stroke(255,0,0);
   } else {
     noStroke();
     fill(c);
   }
   
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
