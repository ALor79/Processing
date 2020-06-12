Attractor a;
Mover m;
PVector dir;
PVector d;
final float G=1;
void setup() {
  size(640, 360);
   a = new Attractor(20);
   m = new Mover(1,new PVector(400,50));
}

void draw() {
  background(255);
  PVector force = a.attract(m);
  m.applyForce(force);
  m.update();
  a.drag();
  a.display();
  m.display();

}
void mousePressed() {
  a.clicked(mouseX,mouseY); 
}
void mouseReleased() {
  a.stopDragging(); 
}
