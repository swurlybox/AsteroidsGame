//your variable declarations here
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Spaceship bob = new Spaceship();
Star[] stars = new Star[100];
public void setup() 
{
  for(int x = 0; x < 5; x++){
    asteroids.add(new Asteroid());
  }
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
  for(int x = 0; x < asteroids.size(); x++){
    double shipX = bob.getCenterX();
    double shipY = bob.getCenterY();
    double rockX = asteroids.get(x).getCenterX();
    double rockY = asteroids.get(x).getCenterY();
    asteroids.get(x).show();
    asteroids.get(x).move();
    if(dist((float)shipX,(float)shipY,(float)rockX,(float)rockY) < 50){
      asteroids.remove(x);
    }
  }
  bob.show();
  bob.move();
  if(left){
    bob.turn(-6);
  }
  if(right){
    bob.turn(6);
  }
  if(up){
    bob.accelerate(0.2);
  }
}

boolean left,right,up = false;

public void keyPressed(){
  if(key == 'a'){
    left =  true;
  }
  if(key == 'd'){
    right = true;
  }
  if(key == 's'){
    bob.hyperspace();
  }
  if(key == 'w'){
    up = true;
    bob.setRocket(true);
  }
}

public void keyReleased(){
  if(key == 'a'){
    left = false; 
  }
  if(key == 'd'){
    right = false; 
  }
  if(key == 'w'){
    up = false;
    bob.setRocket(false);
  }
}
