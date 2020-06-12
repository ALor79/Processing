Bubble b1;
Bubble b2;
int timer;
int direction1;
int direction2;
void setup() {
  size(600, 600);
  direction1=floor(random(-2, 2));
  do {
    direction2=floor(random(-2, 2));
  } while (direction2>direction1-0.4&&direction2<direction1+0.4);
  //direction2=floor(random(-2, 2));
  b1=new Bubble(direction1, 250, 100, 100);
  b2=new Bubble(direction2, 100);
  timer=0;
}
void draw() {
  background(255);
  if(dist(b1.x,b1.y,b2.x,b2.y)<=50&&timer>50){
    //b1.yDirection=-b1.yDirection;
    //b2.yDirection=-b2.yDirection;
    b1.xDirection=-b1.xDirection;
    b2.xDirection=-b2.xDirection;
  }
  b1.display();
  b2.display();
  b2.ascend();

  b1.ascend();
  //delay(30);
  b1.top();
  b2.top();
  b1.sides();
  b2.sides();
  timer++;
}
void mousePressed() {
  b1.Pop();
  b2.Pop();
}
