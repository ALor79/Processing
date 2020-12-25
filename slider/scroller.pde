class Scroller {
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
  Scroller(float s, float e) {
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
  Scroller() {
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
    fill(120);
    rect(position.x, position.y, scrollerWidth*1.1, scrollerHeight, scrollerWidth/10);
    fill(255);
    rect(position.x, position.y, scrollerWidth-bobD, bobD/2, scrollerWidth/10);
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
