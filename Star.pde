class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY, myColor;
  public Star(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  private void show(){
    noStroke();
    fill(myColor);
    ellipse(myX,myY,10,10);
  }
}
