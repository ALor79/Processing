import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
ArrayList<Box> boxes;
ChainBoundary boundary;
Box2DProcessing box2d;  
void setup() {
  box2d=new Box2DProcessing(this);
  box2d.createWorld();
  size(640,360);
  // Create ArrayLists
  boxes = new ArrayList<Box>();
  //boundary=new Boundary(width/2,300,random(200,300),random(10,16));
  boundary=new ChainBoundary();
}

void draw() {
  background(255);
  box2d.step();
  // When the mouse is clicked, add a new Box object
  if (mousePressed) {
    Box p = new Box(mouseX,mouseY,random(10,16),random(10,16));
    boxes.add(p);
  }

  // Display all the boxes
  for (Box b: boxes) {
    b.run();
  }
  for(int i =boxes.size()-1;i>0;i--){
    Box b = boxes.get(i);
    if(b.done()){
      boxes.remove(i);
      
    }
  }
  boundary.run();
}
