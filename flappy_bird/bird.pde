class Bird {

  PVector position;
  PVector velocity;
  PVector acceleration;
  float radius;
  float mass;
  Bird(float r) {
    radius=r;
    mass=radius*radius*radius*4;
    position = new PVector(40, height/2);
    velocity = new PVector(3,0);
    acceleration = new PVector(0.01,0);
  }
  
  void applyForce(PVector force) {
    PVector f = force.copy();
    acceleration.add(f);
  }
  
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(0,127);
  }

}
