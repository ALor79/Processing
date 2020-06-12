int xSpeed=12;
int ySpeed=20;
int y=0;
int x=0;
float radius=50;
color colour=255;
void setup() 
{
  size(1080,720);
}
void draw() 
{
  background(200,200,0);
  displayBall(radius);
  moveBall() ; 
  bounceBall();
  
}
void displayBall(float r) 
{
  fill(colour,50,50);
  ellipse(x, y, r, r);
}
void moveBall() 
{
  x+=xSpeed;
  y+=ySpeed;
}
void bounceBall() 
{
  if(x>width||x<0){
    xSpeed*=-1;
    colour=floor(random(256));
  }
  if(y>height||y<0)
  {
    ySpeed*=-1;
    colour=floor(random(256));
  }
}
