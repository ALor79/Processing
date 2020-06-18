ArrayList<ParticleSystem> systems;
void setup() {
  size(640,480);
  //fullScreen();
  systems=new ArrayList<ParticleSystem>();
}
void draw() {
  background(255);
  for ( ParticleSystem ps : systems) {
    ps.update();
    ps.show();
  }
}
void mousePressed(){
systems.add(new ParticleSystem(mouseX,mouseY));
}
