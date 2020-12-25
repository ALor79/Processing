
class Particle {
  PVector pos;
  PVector vel;
  PVector acc;
  float lifespan;
  PImage img;
  // Another constructor (the one we are using here)
  Particle(PVector l,PImage img) {
    // Boring example with constant acceleration
    acc = new PVector(0,0.05,0);
    vel = new PVector(random(-1,1),random(-1,1),0);
    vel.mult(2);
    pos = l.copy();
    lifespan = 255;
    this.img=img;
    
  }

  void run() {
    update();
    render();
  }
  void applyForce(PVector f) {
    acc.add(f);
  }

  // Method to update position
  void update() {
    vel.add(acc);
    pos.add(vel);
    lifespan -= 2.0;
    acc.mult(0);
  }

  // Method to display
  void render() {
    imageMode(CENTER);
    tint(lifespan);
    image(img,pos.x,pos.y);
  }
  
  // Is the particle still useful?
  boolean isDead() {
    if (lifespan <= 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
