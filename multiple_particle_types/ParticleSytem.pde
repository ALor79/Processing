class ParticleSystem {
  private ArrayList<Particle> particles;
  private PVector position;
  private String type;
  ParticleSystem() {
    position=new PVector(width/2, 20);
    particles =new ArrayList<Particle>();
    this.type="Particle";
  }
  ParticleSystem(float x, float y) {
    position=new PVector(x, y);
    particles =new ArrayList<Particle>();
    this.type="Particle";
  }
  ParticleSystem(float x, float y, String type ) {
    position=new PVector(x, y);
    particles =new ArrayList<Particle>();
    this.type=type;
  }

  void setType(String type) {
    this.type=type;
  }
  void update() {
    if (type.equals("Particle")) {
      particles.add(new Particle(position.x, position.y));
    } else if (type.equals("starParticle")) {
      particles.add(new starParticle(position.x, position.y));
    } else if (type.equals("squareParticle")){
      particles.add(new squareParticle(position.x, position.y));
    }
    
    for (int i=particles.size()-1; i>=0; i--) {
      Particle p=particles.get(i);
      
      p.update();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
  void applyForce(PVector force){
    for(Particle p: particles){
      p.applyForce(force);
    }
  }
  void setPosition(PVector pos) {
    this.position=pos;
  }
  void setPosition(float x, float y) {
    this.setPosition(new PVector(x, y));
  }
  void incrementPosition() {
    position.add(1, 1);
  }
  void incrementPosition(PVector pos) {
    position.add(pos);
  }
  void incrementPosition(float x, float y) {
    position.add(x, y);
  }
  PVector getPosition() {
    return position;
  }
  void show() {
    for (Particle p : particles)
      p.display();
  }
}
