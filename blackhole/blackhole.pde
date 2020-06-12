
PImage[] drops= new PImage[6];
void setup() {
  size (590, 590);
  for (int i=0; i<drops.length; ++i) {
    drops[i] = loadImage("Hole_"+i+".png");
  }
}
int frames=0;
void draw() {
  frameRate(10);
  background (0);
  if (frames==6)
    frames=0;
    image(drops[frames], 0, 0, width, height);
  frames++;
}
