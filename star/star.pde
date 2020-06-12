void setup() {
  size(1000, 700);
  background(255, 200, 0);
}
void draw() {
}
void Star(float x, float y, float m) { 
  //fill(127);
  stroke(255);
  strokeWeight(0);
  beginShape();
  vertex(x, y-m*(50));
  vertex(x+m*(14), y-m*(20));
  vertex(x+m*(47), y-m*(15)); 
  vertex(x+m*(23), y+m*(7));
  vertex(x+m*(29), y+m*(40));
  vertex(x, y+m*(25));
  vertex(x-m*(29), y+m*(40));
  vertex(x-m*(23), y+m*(7));
  vertex(x-m*(47), y-m*(15));
  vertex(x-m*(14), y-m*(20));
  endShape(CLOSE);
}
void mousePressed() {
  background(255, 200, 0);
  for (int i=10; i>0; i--) {
    fill(10,10,255-(i*20));
    Star(mouseX, mouseY, 0.25*(i+1));
    
  }
}
