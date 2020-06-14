class Bob { 
  PVector pos;
  PVector velocity;
  PVector acceleration;
  float mass = 15;
  
  // Arbitrary damping to simulate friction / drag 
  float damping = 0.995;

  // Constructor
  Bob(float x, float y) {
    pos = new PVector(x,y);
    velocity = new PVector();
    acceleration = new PVector();
  } 

  // Standard Euler integration
  void update() { 
    velocity.add(acceleration);
    velocity.mult(damping);
    pos.add(velocity);
    acceleration.mult(0);
  }

  // Newton's law: F = M * A
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }


  // Draw the bob
  void display() { 
    stroke(0);
    strokeWeight(2);
    fill(175);

    ellipse(pos.x,pos.y,mass*2,mass*2);
  } 

}
