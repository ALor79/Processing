Bob bob;
PVector origin;
float RestLength=100;
Spring spring;
void setup() {
  size(640, 360);
  origin=new PVector(width/2, 20);
  spring=new Spring(0.5, RestLength, origin);
  bob = new Bob(origin.x, RestLength-50);
}

void draw() {
  //translate(origin.x, origin.y);
  PVector gravity = new PVector(0, 2);
  bob.applyForce(gravity);
  spring.connect(bob);
  background(255); 
  line(origin.x, origin.y, bob.pos.x, bob.pos.y);

  bob.update();
  bob.display();
  if (mousePressed)
  {
    PVector wind=new PVector(10, 0);
    bob.applyForce(wind);
  }
}
