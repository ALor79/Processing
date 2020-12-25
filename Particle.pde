//daniel shiffman's code
public class Particle {
  protected PVector position;
  private PVector velocity;
  private PVector acceleration;
  protected float lifespan;

  final static protected float r = 6;


  Particle(float x, float y) {
    acceleration = new PVector();
    velocity = PVector.random2D();
    position = new PVector(x, y);
    lifespan = 255.0;
  }

  void applyForce(PVector f) {
    acceleration.add(f);
  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
    lifespan -= 1;
  }

  // Method to display
  void display() {
    stroke(0, lifespan);
    strokeWeight(2);
    fill(127, lifespan);
    ellipse(position.x, position.y, r*2, r*2);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
