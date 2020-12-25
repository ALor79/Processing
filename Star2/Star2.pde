int j=0;
void setup() {
  size(1000, 700);
  background(255, 200, 0);
}
void draw() {
  //float starSize=random(0, 0.6);


  background(255, 200, 0);

  j++;
  for (int i=5; i>0; i--) {
    if (300*j<width) {
      fill(10, 10, 255-(i*50));
      Star(500, 350, j*(i+1));
    }else{
    j=0;
    }
  }
  delay(200);
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
