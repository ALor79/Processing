class Square {
  char type;
  PVector pos;
  color colour;
  Square(PVector position) {
    type='E';
    pos=position.copy();
    colour=color(170);

  }

  void show() {
    fill(colour);
    rect(origin.x+pos.x,origin.y+ pos.y, scale/3, scale/3);

    if (type!='E') {
      float mWidth=textWidth(type);
      fill(0);
      textSize(50);
      text(type, origin.x+pos.x-mWidth/2+scale/3/2, origin.y+pos.y+mWidth/2+scale/3/2);
    }
  }
  void clicked(float x, float y) {

    if (inThis(x, y)) {
      colour=color(255);
      if (type=='E') {
        if (turn=='X') {
          type='X';
          turn='O';
        } else {
          turn='X';
          type='O';
        }
      }
    }
  }
  boolean inThis(float x, float y) {

    float thisLeft=pos.x;
    float thisRight=pos.x+scale/3;
    if (x-origin.x<thisRight&&x-origin.x>thisLeft) {//seeing if the x of mouse is in the box

      float thisUp=pos.y;
      float thisDown=pos.y+ scale/3;
      if (-origin.y+y<thisDown&&-origin.y+y>thisUp) {//seeing if the y of mouse is in the box
        return true;
      }
    }
    return false;
  }
}
