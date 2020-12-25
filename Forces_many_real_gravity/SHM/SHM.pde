final PVector Amplitude=new PVector(100,200);
final float Period=200;
void setup() {
  size(640, 480);
}
void draw() {
  background(120);
  simpleHarmonicMotion(width/2, (height)/2);

}
void simpleHarmonicMotion(float x_, float y_) {
  pushMatrix();
  translate(x_, y_);
  float x=Amplitude.x*sin((frameCount/Period)*TWO_PI);
  float y=Amplitude.y*sin(((frameCount+15)/Period)*TWO_PI);
  stroke(2);
  line(0,0,x,y);
  ellipse(x, y, 36, 36);
  popMatrix();
}
