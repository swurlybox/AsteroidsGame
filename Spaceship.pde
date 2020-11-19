class Spaceship extends Floater  
{   
    //your code here
    Spaceship(){
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
    }
    
    public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*500+250);
      myCenterY = (int)(Math.random()*500+250);
      myPointDirection = (int)(Math.random()*360);
    }
    
    
}
