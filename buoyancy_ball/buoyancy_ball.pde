Mover[] balls=new Mover[5];
float Density=1;
final float scale=10;
final float g=(9.8/60/60);
final float windPower=6;
void setup() 
{
  frameRate(60);
  size(720, 480);
  for (int i=0; i<balls.length; i++) {
    float r=random(20,50);
    float m=random(1,4);
    balls[i]=new Mover(m, random(width), height-r, r);
  }
}
void draw() 
{
  background(226);
  for (Mover ball : balls) {
    ball.applyBuoyancy();
    ball.applyGravity();
    ball.update();
    ball.checkEdges();
    ball.display();
  }
}
void keyPressed() {
  switch(key) {
  case 'd':
    for (Mover m : balls) {
      PVector wind = new PVector(windPower, 0);
      m.applyForce(wind);
    }
    break;
  case 's':
    for (Mover m : balls) {
      PVector wind = new PVector(0, windPower);
     m.applyForce(wind);
    }
    break;
  case 'w':
    for (Mover m : balls) {
      PVector wind = new PVector(0, -windPower);
      m.applyForce(wind);
    }
    break;
  case 'a':
    for (Mover m : balls) {
      PVector wind = new PVector(-windPower, 0);
      m.applyForce(wind);
    }
    break;
  default:
    // code block
  }
}
