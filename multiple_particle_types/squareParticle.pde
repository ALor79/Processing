
public class squareParticle extends Particle {
  float angle=0;
  float omega=random(-0.5,0.5);//angular velocity
  squareParticle(float x, float y) {
    super(x, y);
  }
  squareParticle(PVector P) {
    super(P.x, P.y);
  }
  //@Override
  void display(){
    rectMode(CENTER);
    stroke(0, lifespan);
    strokeWeight(2);
    fill(127, lifespan);
    pushMatrix();
    
    translate(position.x, position.y);
    rotate(angle);
    rect(0,0,r*2, r*2);
    popMatrix();
  }
  void update(){
    super.update();
    angle+=omega;
  }
}
