
ParticleSystem ps;

PImage image;

void setup() {
  size(640, 360);

  // Create an alpha masked image to be applied as the particle's texture
  image = loadImage("texture.png");

  ps = new ParticleSystem(0, new PVector(width/2, height/2),image);
}

void draw() {

  // Additive blending!
  blendMode(ADD);

  background(0);
  if (mousePressed) {
    
    PVector wind = new PVector(width/2,height/2);
    wind.sub(mouseX,mouseY);
    //wind.normalize();
    wind.mult(0.003);
    ps.applyForce(wind);
  }
  ps.run();
  for (int i = 0; i < 10; i++) {
    ps.addParticle();
  }
}
