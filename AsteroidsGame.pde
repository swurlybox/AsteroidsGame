//your variable declarations here
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Spaceship bob = new Spaceship();
Star[] stars = new Star[100];
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
public void setup() 
{
  //sets up background/how many stars and asteroids
  size(1000,1000);
  background(0);
  for(int x = 0; x < 5; x++){
    asteroids.add(new Asteroid());
  }
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  //draws stars
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  //ship asteroid collision
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
  //draws the ship
  bob.show();
  bob.move();
  //draw the bullets and detects collision with asteroids
  for(int a = 0; a < bullets.size(); a++){
    bullets.get(a).show();
    bullets.get(a).move();
    double bulletX = bullets.get(a).getCenterX();
    double bulletY = bullets.get(a).getCenterY();
    for(int b = 0; b < asteroids.size(); b++){
      double rockX = asteroids.get(b).getCenterX();
      double rockY = asteroids.get(b).getCenterY();
      if(dist((float)bulletX,(float)bulletY,(float)rockX,(float)rockY) < 100){
        asteroids.remove(b);
        bullets.remove(a);
      }
    }
  }
  //below are the controls code
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
  if(key == ' '){
    bullets.add(new Bullet(bob));
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
