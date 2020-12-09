class Spaceship extends Floater  
{   
    //your code here
    private boolean rocketFire;
    private Spaceship(){
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myColor = 255;
      myCenterX = (500);
      myCenterY = (500);
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
      rocketFire = false;
    } 
    public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*500+250);
      myCenterY = (int)(Math.random()*500+250);
      myPointDirection = (int)(Math.random()*360);
    }
      public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);
    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    if(rocketFire == true){
      stroke(255,255,0);
      strokeWeight(10);
      line(-10,8,-15,8);
      line(-10,-8,-15,-8);
      strokeWeight(1);
    }
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public void setRocket(boolean x){
    rocketFire = x;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getDirection(){
    return myPointDirection;
  }
}
