final float d=4;
float x, y;
float r, teta;
color colour;
boolean inOut=false;
float s;
void setup() {
  frameRate(300);
  size(540, 320);
  background(0);
  if (height<width)
    s=height;
  else
    s=width;
  r=s/2;
  teta=0;
}
void draw() {
  translate(width/2, height/2);
  x=r*cos(teta);
  y=r*sin(teta);
  noStroke();
  fill(colour);
  ellipse(x, y, d, d);
  if (r>0&&!inOut) {
    r-=0.1;
    teta+=0.1;
    colour=color(255);
  } else {
    inOut=true;
    r+=0.1;
    teta-=0.1;
    colour=color(255, 0, 0);
  }

  if (inOut && r>(s/2-0.2))
    inOut=false;
}
void keyPressed() {
  if (key==' ')
    background(0);
}
