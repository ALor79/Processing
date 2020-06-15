Mover[] balls=new Mover[5];
float Density=1;
final float scale=10;
final float g=(9.8/60/60);
final float windPower=6;
final color bgColor=GenerateColor();
void setup() 
{
  frameRate(60);
  size(720, 480);
  for (int i=0; i<balls.length; i++) {
    float r=random(25, 50);
    float m=random(1, 4);
    balls[i]=new Mover(m, random(width), height-r, r, GenerateColor());
  }
}
void draw() 
{
  background(bgColor);
  for (Mover ball : balls) {
    GenerateColor();
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
color GenerateColor() {
  float R = random(255);
  float G = random (255);
  float B = random (255);
  return color(R, G, B);
}
