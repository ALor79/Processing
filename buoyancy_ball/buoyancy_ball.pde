Mover ball;
float Density=1;
final float scale=10;
final float g=(9.8/60/60);
void setup() 
{
  frameRate(60);
  size(720, 480);
  ball=new Mover(2, width/2, height-50, 50);
}
void draw() 
{
  background(200, 200, 0);

  //density=ball.mass/(pow(ball.radius,3));
  ball.applyBuoyancy();
  ball.applyGravity();
  ball.update();
  ball.checkEdges();
  ball.display();
}
