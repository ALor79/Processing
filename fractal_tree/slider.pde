class Slider {
  float value;
  float scale;
  boolean dragging;
  float draggingOffset;
  PVector bob;
  float bobD;
  float scrollerWidth;
  float scrollerHeight;
  PVector position;
  float start, end;
  Slider(float s, float e) {
    start=s;
    end=e;
    scale =1;
    dragging=false;
    position=new PVector(width/2, height/2);
    bob=position.copy();
    bobD=20*scale;
    scrollerWidth=120*scale;
    scrollerHeight=30*scale;
  }
  Slider(float start_, float end_,float x,float y,float d,float w,float h) {
    start=start_;
    end=end_;
    scale =1;
    dragging=false;
    position=new PVector(x, y);
    bob=position.copy();
    bobD=d*scale;
    scrollerWidth=w*scale;
    scrollerHeight=h*scale;
  }
  Slider() {
    start=0;
    end=1;
    scale =1;
    dragging=false;
    position=new PVector(width/2, height/2);
    bob=position.copy();
    bobD=20*scale;
    scrollerWidth=120*scale;
    scrollerHeight=30*scale;
  }
  void show() {
    rectMode(CENTER);
    fill(255,200);
    rect(position.x, position.y, scrollerWidth*1.1, scrollerHeight, scrollerWidth/10);
    fill(100,255);
    rect(position.x, position.y, scrollerWidth-bobD, bobD/2, scrollerWidth/10);
    fill(200,255);
    ellipse(bob.x, bob.y, bobD, bobD);
  }

  void stopDragging() {
    dragging = false;
  }
  void clicked(float X, float Y) {
    float d = dist(X, Y, bob.x, bob.y);
    if (d < bobD/2) {
      dragging = true;
      draggingOffset = bob.x-X;
    }
  }
  void drag() {
    if (dragging) {
      bob.x = mouseX + draggingOffset;
      if (bob.x>position.x+scrollerWidth/2-bobD/2) {
        bob.x=position.x+scrollerWidth/2-bobD/2;
      } else if (bob.x<position.x-scrollerWidth/2+bobD/2) {
        bob.x=position.x-scrollerWidth/2+bobD/2;
      }
    }
  }
  void findVal() {
    value=map(bob.x, position.x-scrollerWidth/2+bobD/2, position.x+scrollerWidth/2-bobD/2, start, end);
    
  }
  void update(){
    findVal();
    show();
    drag();
  }
}
