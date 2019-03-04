Ball flickitizer;
Ball dunGetFlicked;
color myColor;
color otherColor;
int largeDiameter = 100;
int smallDiameter = 70;

void setup()
{
  size(600,600);
  background(0);
  fill(255);
  noStroke();
  smooth(8);
  myColor = color(random(100,255),0,0);
  otherColor = color(0,0,random(100,255));
  // xPos, yPos, color, diameter
  flickitizer = new Ball(width/2, height/2, myColor, smallDiameter);
  dunGetFlicked = new Ball(width/2, height/2, otherColor, largeDiameter);
}


void draw() 
{
  background(0);
  dunGetFlicked.didBonk(flickitizer);
  flickitizer.updateAndDisplay(new PVector(mouseX, mouseY));
  dunGetFlicked.display();
  println(dunGetFlicked.bonkStatus());
}


void mousePressed()
{
  dunGetFlicked.reset();
}

void keyPressed()
{
  background(0);
}
