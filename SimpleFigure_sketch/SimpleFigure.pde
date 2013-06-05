class SimpleFigure
{
  //Properties
  int myX;
  int myY;
  int myW;
  int myH;
  int myVX;
  int myVY;


  //Default Constructor
  SimpleFigure()
  {
    myX = (int) random(width);
    myY = (int) random(height);
    myW = 100;
    myH = 100;
    myVX = 1;
    myVY = 1;
  }

  //Constructor
  SimpleFigure(int inputX, int inputY)
  {
    myX = inputX;
    myY = inputY;
    myW = 100;
    myH = 100;
    myVX = -1;
    myVY = -1;
  }

  //Methods
  void drawMe()
  {
    rectMode(CENTER);
      rect(myX, myY+50, myW, myH, 10);
    ellipse(myX, myY, myW, myH);
  }

  void moveMe()
  {
    myX += myVX;
    myY += myVY;
    
    if (myX > width || myX < 0)
    {
      myVX *= -1;
    }
    if (myY > height || myY < 0)
    {
      myVY *= -1;
    }
  }
}

