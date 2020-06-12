class Bubble {
  float x;
  float y;
  int colour;
  color farbe;//farbe means color in german 
  int red;
  int green;
  int blue;
  float xDirection;
  float yDirection;
  float radius=25;

  int timer;
  Bubble(float direction, int sorkh, int sabz, int abi) {
    x=width/2;
    //x=random(width);
    y=height;
    red= sorkh;//sorkh means red in persian
    blue=abi;//you can guess the rest
    green=sabz;
    farbe=color(red, green, blue);
    xDirection=direction;
    yDirection=4;
  }
  Bubble(float direction, int rang) {
    x=width/2;
    //x=random(width);
    y=height;
    red= rang;//sorkh means red in persian
    blue=rang;//you can guess the rest
    green=rang;
    farbe=color(red, green, blue);
    xDirection=direction;
    yDirection=4;
  }
  Bubble(float direction) {
    x=width/2;
    y=height;
    farbe= color(0, 0, 0);
    xDirection=direction;
    yDirection=4;
  }

  void ascend() {
    y-=yDirection;

    x+=xDirection;
  }
  void display() {
    //fill (colour);
    fill (farbe);
    ellipse(x, y, 2*radius, 2*radius);
  }
  //changes the color of the bubble to its polar opposite
  void Pop() {
    if (dist(mouseX, mouseY, x, y)<=radius ) {
      red=255-red;
      green=255-green;
      blue=255-blue;
      farbe=color(red, green, blue);
    }
  }
  void top() {
    if (y<=radius) {

      y=radius;
      yDirection=0;

      x+=xDirection;
      //hitTop=!hitTop;
    }
  }
  void sides() {
    if (x<=radius||x>=width-radius) {
      xDirection*=-1;
    }
  }
  //void hitBubble{
  //  //if(dist(x,y,,)<
  //}
}
