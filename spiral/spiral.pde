final float d=4;
float x, y;
float r, teta;
color colour;
boolean inOut=false;
float s;
float diff=0.1;
void setup() {
  frameRate(500);
  size(640, 480);
  background(0);
  if (height<width)
    s=height-10;
  else
    s=width-10;
  r=s/2;
  teta=0;
}
void draw() {
  translate(width/2, height/2);
  x=r*cos(teta);
  y=r*sin(teta);
  noStroke();
  drawSpiral();
  if (r<0) {
    inOut=false;
    diff=0.1;
    GenerateColor();
  } else if (r>(s/2)) {
    inOut=true;
    
    diff=-0.1;
    
    GenerateColor();
  }
  
}
void keyPressed() {
  if (key==' ')
    background(0);
}
void drawSpiral() {
  fill(colour);
  ellipse(x, y, d, d);
  r+=diff;
  teta=teta-diff;
}
void GenerateColor(){
    float R = random(255);
    float G = random (255);
    float B = random (255);
    colour=color(R, G, B);
  }
