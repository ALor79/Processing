class Mover {
  float mass;
  PVector pos;
  PVector vel;
  PVector acc;
  Mover(float m, PVector p) {
    pos=p;
    mass=m;
    vel = new PVector(1, 0);
    acc = new PVector(0, 0);
  }
  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }
  void applyForce(PVector force) {
    PVector temp = PVector.div(force, mass);
    acc.add(temp);
  }
  void display() {
    stroke(0);
    strokeWeight(1);
    fill(127);
    ellipse(pos.x, pos.y, 16*mass, 16*mass);
  }
  void checkEdges() {

    if (pos.x > width) {
      pos.x = 0;
    } else if (pos.x < 0) {
      pos.x = width;
    }

    if (pos.y > height) {
      vel.y *= -1;
      pos.y = height;
    }
  }

}
