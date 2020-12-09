class Bullet extends Floater
{
  private Bullet(Spaceship theShip){
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getDirection();
    accelerate(6.0);
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
