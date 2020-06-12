class Bubble {
  float x;
  float y;
  color colour;
  //boolean hitTop=false;
  Bubble() {
    x=width/2;
    y=height;
    colour= 0;
  }
  void ascend() {
    y-=3;
  }
  void display() {
    fill (colour);
    ellipse(x, y, 50, 50);
  }
  void Pop() {
    if (dist(mouseX, mouseY, x, y)<=25 ) {
      if (colour==255) {
        colour=0;
      } else {
        colour=255;
      }
    }
  }
  void top(){
    if(y<=25){
       
      y=random(25,30);
      x+=random(-2,2);
    }
  }
}
