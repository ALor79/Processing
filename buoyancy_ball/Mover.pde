
class Mover {
  final float Epsilon=0.80;
  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;
  float radius;
  float volume;
  float density;
  Mover(float m, float x, float y, float r) {
    mass = m;
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    radius=r;
    volume=pow((radius/scale), 3)*PI*3/4;
    density=mass/volume;
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
  void applyBuoyancy() {
    PVector buoyancy=new PVector(0, -1);
    buoyancy.mult(volume);
    buoyancy.mult(g);
    buoyancy.mult(Density);
    applyForce(buoyancy);
  }
  void applyGravity() {
    PVector gravity = new PVector(0, g*mass);
    applyForce(gravity);
  }
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(0, 200);
    ellipse(position.x, position.y, radius*2, radius*2);
  }

  void checkEdges() {

    if (position.x+radius > width) {
      position.x = width-radius;
      velocity.x *= -Epsilon;
    } else if (position.x < radius) {
      velocity.x *= -Epsilon;
      position.x = radius;
    }

    if (position.y+radius > height) {
      velocity.y *= -Epsilon;
      position.y = height-radius;
    } else if (position.y < radius) {
      velocity.y *= -Epsilon;
      position.y = radius;
    }
    

  }
}
