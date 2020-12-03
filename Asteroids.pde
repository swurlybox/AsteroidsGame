class Asteroid extends Floater
{
  private double rotSpeed;
  Asteroid()
  {
  corners = 6;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = (int)(Math.random()*20 + 60);
  yCorners[0] = (int)(Math.random()*10 + 60);
  xCorners[1] = (int)(Math.random()*20 + 20);
  yCorners[1] = (int)(Math.random()*10 + 60);
  xCorners[2] = (int)(Math.random()*20 - 20);
  yCorners[2] = (int)(Math.random()*10 + 80);
  xCorners[3] = (int)(Math.random()*20 - 70);
  yCorners[3] = (int)(Math.random()*10 - 10);
  xCorners[4] = (int)(Math.random()*20 - 10);
  yCorners[4] = (int)(Math.random()*10 - 30);
  xCorners[5] = (int)(Math.random()*20 + 70);
  yCorners[5] = (int)(Math.random()*10 - 10);
  myColor = 100;
  myCenterX = (int)(Math.random()*1000);
  myCenterY = (int)(Math.random()*1000);
  myXspeed = (Math.random()*2 - 1);
  myYspeed = (Math.random()*2 - 1);
  myPointDirection = (int)(Math.random()*360);
  rotSpeed = (Math.random()*2);;
  }
  void move(){
    turn(rotSpeed);
    super.move();
    
    
  }

  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }










}
