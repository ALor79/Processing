void setup(){
  fullScreen();
}
  
void draw() {
  background(255);
  float s = map(second(),0,59,0,width);  // Values from 0 - 59
  float m = map(minute(),0,59,0,width);  // Values from 0 - 59
  float h = map(hour(),0,59,0,width);   // Values from 0 - 23
  strokeWeight(4);
  line(s, 0, s, height/3);
  line(m, height/3, m, height*2.0/3);
  line(h, height*2.0/3, h, height);
}
