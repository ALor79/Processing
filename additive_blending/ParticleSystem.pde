class ParticleSystem {

  ArrayList<Particle> particles;    // An arraylist for all the particles
  PVector origin;        // An origin point for where particles are birthed

  PImage tex;

  ParticleSystem(int num, PVector v,PImage img) {
    particles = new ArrayList();              // Initialize the arraylist
    origin = v.copy();                        // Store the origin point
    tex=img;
    for (int i = 0; i < num; i++) {
      particles.add(new Particle(origin,tex));    // Add "num" amount of particles to the arraylist
    }
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }

  void addParticle() {
    particles.add(new Particle(origin,tex));
  }

  void addParticle(Particle p) {
    particles.add(p);
  }

  // A method to test if the particle system still has particles
  boolean dead() {
    if (particles.isEmpty()) {
      return true;
    } 
    else {
      return false;
    }
  }
    void applyForce(PVector f) {
    for(Particle p:particles){
      p.applyForce(f);
    }
  }

}
