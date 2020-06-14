class Oscillator {
  PVector Amplitude;
  float size;
  int rand;
  Oscillator(){
    Amplitude=new PVector(-random(width/2 -50),random(width/2 -50), random(height/2 -50));
    size=random(30,50);
    rand=(int)random(30);
  }
  void simpleHarmonicMotion() {
    pushMatrix();

    float x=Amplitude.x*sin((frameCount/Period)*TWO_PI);
    float y=Amplitude.y*sin(((frameCount+rand)/Period)*TWO_PI);
    stroke(2);
    line(0, 0, x, y);
    ellipse(x, y, size, size);
    popMatrix();
  }
}
