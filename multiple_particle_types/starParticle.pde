void Star(float x, float y, float magnitude) { 
  magnitude/=100;
  beginShape();
  vertex(x, y-magnitude*(50));
  vertex(x+magnitude*(14), y-magnitude*(20));
  vertex(x+magnitude*(47), y-magnitude*(15)); 
  vertex(x+magnitude*(23), y+magnitude*(7));
  vertex(x+magnitude*(29), y+magnitude*(40));
  vertex(x, y+magnitude*(25));
  vertex(x-magnitude*(29), y+magnitude*(40));
  vertex(x-magnitude*(23), y+magnitude*(7));
  vertex(x-magnitude*(47), y-magnitude*(15));
  vertex(x-magnitude*(14), y-magnitude*(20));
  endShape(CLOSE);
}
void Star(PVector pos, float magnitude) {
  Star(pos.x, pos.y, magnitude);
}
public class starParticle extends Particle {
  float angle=0;
  float omega=random(-0.5,0.5);//angular velocity
  starParticle(float x, float y) {
    super(x, y);
  }
  starParticle(PVector P) {
    super(P.x, P.y);
  }
  //@Override
  void display(){
    
    stroke(0, lifespan);
    strokeWeight(2);
    fill(127, lifespan);
    pushMatrix();
    translate(position.x, position.y);
    rotate(angle);
    Star(0,0, r*2);
    popMatrix();
  }
  void update(){
    super.update();
    angle+=omega;
  }
}
