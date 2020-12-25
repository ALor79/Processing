ArrayList<ParticleSystem> systems;
void setup() {
  size(640,480);
  //fullScreen();
  systems=new ArrayList<ParticleSystem>();
  systems.add(new ParticleSystem(0,height/2));
}
void draw() {
  systems.
  background(255);
  for ( ParticleSystem ps : systems) {
    ps.update();
    ps.show();
  }
  //saveFrame("Frame/frame_####.tiff");
}
void mousePressed(){
//systems.add(new ParticleSystem(mouseX,mouseY));
}
