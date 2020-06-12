
class Mover {
  final float Epsilon=0.95;
  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover(float m, float x , float y) {
    mass = m;
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
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
    fill(0,200);
    ellipse(position.x,position.y,mass*16,mass*16);
  }

  void checkEdges() {

    if (position.x > width) {
      position.x = width;
      velocity.x *= -Epsilon;
    } else if (position.x < 0) {
      velocity.x *= -Epsilon;
      position.x = 0;
    }

    if (position.y > height) {
      velocity.y *= -Epsilon;
      position.y = height;
    }else if (position.y < 0) {
      velocity.y *= -Epsilon;
      position.y = 0;
    }

  }
}
