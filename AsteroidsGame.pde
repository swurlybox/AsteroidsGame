//your variable declarations here
Spaceship bob = new Spaceship();
Star[] stars = new Star[100];
public void setup() 
{
  //your code here
  size(1000,1000);
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed(){
  if(key == 'a'){
    bob.turn(-5);
  }
  if(key == 'd'){
    bob.turn(5);
  }
  if(key == 'w'){
    bob.accelerate(0.2);
  }
  if(key == 's'){
    bob.hyperspace();
  }
  
}
