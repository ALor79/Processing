Oscillator[] oscillators=new Oscillator[5];
final float Period=200;
void setup() {
  size(640, 480);
  for (int i=0;i< oscillators.length;i++){
      oscillators[i] =new Oscillator();
  }
}
void draw() {
  background(120);
  translate(width/2, (height)/2);
  for (Oscillator oscillator : oscillators)
    oscillator.simpleHarmonicMotion();

}
