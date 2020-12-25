Bird player;
void setup() {
  size(1000, 500);
  frameRate(60);

  player =new Bird();

}


void draw() {

  background(255);
  scoreNumber+=0.1;
  PVector gravity = new PVector(0, 0.3);
  player.applyForce(gravity);
  player.update();
  translate(50-player.position.x, 0);


}
void keyPressed() {
  if (key == ' ' && !flying ) {
    PVector jump=new PVector(0, -12);
    player.applyForce(jump);
  }
}
