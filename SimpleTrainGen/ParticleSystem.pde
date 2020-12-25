class ParticleSystem {
  ArrayList<Particle> particles;
  float colour;
  ParticleSystem() {
    particles= new ArrayList<Particle>();
  }
  void run() {
    // Display all the particles
    for (Particle p : particles) {
      p.run();
    }
    for (int i =particles.size()-1; i>0; i--) {
      Particle p = particles.get(i);
      if (p.done()) {
        particles.remove(i);
      }
    }
  }
  void addParticle(){
        if (colour<100) {
      colour++;
    } else {
      colour=0;
    }
      Particle p = new Particle(mouseX, mouseY, random(10, 16)/2,colour);
      particles.add(p);
  }
}
