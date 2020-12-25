import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import java.util.Random;
BoxSystem bs;
ParticleSystem ps;
ChainBoundary boundary;
Box2DProcessing box2d;  
void setup() {
  box2d=new Box2DProcessing(this);
  box2d.createWorld();
  size(640, 360);
  // Create ArrayLists of boxes
  bs = new BoxSystem();
  // Create ArrayLists of particles
  ps=new ParticleSystem();
  boundary=new ChainBoundary(new PVector(1, 5*PI), Tabee.Perlin);
}

void draw() {
  colorMode(RGB,255);
  background(255);
  box2d.step();
  // When the mouse is clicked, add a new Box object
  if (mousePressed ) {
    if (mouseButton == LEFT) {
       bs.addBox();
    }else{
      ps.addParticle();
    }
  }


  bs.run();
  ps.run();
  
  boundary.run();
}
