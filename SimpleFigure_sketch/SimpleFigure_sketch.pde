SimpleFigure Tom;
SimpleFigure Dick;
SimpleFigure Harry;


void setup()
{
  size(600,400);
  Tom = new SimpleFigure();
  Dick = new SimpleFigure();
  Harry = new SimpleFigure(mouseX,mouseY); //not working as intended
  
}

void draw()
{
  background(128);
  Tom.drawMe();
  Dick.drawMe();
  Harry.drawMe();
  
  Tom.moveMe();
  Dick.moveMe();
  Harry.moveMe();
  
}


void mouseClicked()
{
    Harry = new SimpleFigure(mouseX,mouseY);
}
