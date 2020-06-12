void setup() {
  size(300, 400);
}
void draw() {

  for (int x=0; x<width; x=x+20)
  {
    for (float y=0; y<height; y=y+20)
    {
      color colour = floor(dist(mouseX, mouseY, x, y));
      noFill();
      strokeWeight(0);

      fill(255-random(colour-20, colour+20), 0, 0);
      rect(x, y, 20, 20);
    }
  }
}
