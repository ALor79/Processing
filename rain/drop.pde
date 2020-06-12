
class Drop {

  float x;
  float y;
  float z;
  float ySpeed;
  float xSpeed;
  float wind;
  color colour;
  float size;
  Drop(color c) {
    x=random(-30, width+30);
    y=random(-MAX*1.2, 0);
    z=random(0, 25);
    xSpeed=map(mouseX, 0, width, 3, -3);
    ySpeed=map(z, 0, 25, 5, 15);
    colour=c;
    size=map(z, 0, 25, 10, 20);
  }
  void fall() {
    float gravity=map(z, 0, 25, 0, 0.2);
    y+=ySpeed;
    x+=xSpeed;
    xSpeed=map(mouseX, 0, width, 2, -2);
    ySpeed+=gravity;
  }
  void out() {
    if (y>height) {
      y=random(-200, 000);
      ySpeed=map(z, 0, 25, 5, 15);
    }
    if (x>width+50||x<-50) {
      if (mouseX>width/2) {
        float N=map(mouseX, width/2, width, 20, 50);
        x=random(width/4, width+N);
      } else {
        float N=map(mouseX, 0, width/2, 50, 20);
        x=random(-N, 3*width/4);
      }
      x=random(-200, width+200);
      y=random(-200, 00);
    }
  }
  void show() {
    stroke(colour);
    float thickness=map(z, 0, 25, 1, 3);
    strokeWeight(thickness);
    wind=map(mouseX, 0, width, 3, -3);
    line(x, y, x+wind, y+size);
  }
}
