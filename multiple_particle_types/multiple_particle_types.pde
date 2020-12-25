ParticleSystem ps;
final PVector END_OF_SCREEN=new PVector(640, height/2);
void setup() {
  //size(640, 480);
  //frameRate(10);
  fullScreen();
  ps=new ParticleSystem(width/2, height/2, "squareParticle");
}
void draw() {
  background(255);
  //PVector gravity=new PVector(0, 0.05);
  //ps.applyForce(gravity);
  if (mousePressed) {
    
    PVector wind = new PVector(width/2,height/2);
    wind.sub(mouseX,mouseY);
    //wind.normalize();
    wind.mult(0.003);
    ps.applyForce(wind);
  }
  float particleType=random(1);
  if (particleType<0.3333) {
    ps.setType("Particle");
  } else if (particleType<0.3333*2) {
    ps.setType("starParticle");
  } else {
    ps.setType("squareParticle");
  }
  ps.update();
  ps.show();
}
