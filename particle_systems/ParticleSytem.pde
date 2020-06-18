class ParticleSystem {
  ArrayList<Particle> particles;
  PVector position;
  ParticleSystem() {
    position=new PVector(width/2, 20);
    particles =new ArrayList<Particle>();
  }
  ParticleSystem(float x, float y) {
    position=new PVector(x, y);
    particles =new ArrayList<Particle>();
  }
  void update() {
    particles.add(new Particle(position.x, position.y));
    for (int i=particles.size()-1; i>=0; i--) {
      Particle p=particles.get(i);
      p.applyForce(new PVector(0, 0.1));
      p.update();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
  void show() {
    for (Particle p : particles)
      p.display();
  }
}
