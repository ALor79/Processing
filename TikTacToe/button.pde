class ResetButton {
  PVector pos;
  PVector size;
  ResetButton(PVector s) {
    size=s;
    pos=new PVector(width/2-size.x/2, height*2.0/3);
  }
  void clicked(float x, float y) {

    if (inThis(x, y)) {
      loop();
      restartGame();
    }
  }
  boolean inThis(float x, float y) {

    float thisLeft=pos.x;
    float thisRight=pos.x+size.x;
    if (x<thisRight&&x>thisLeft) {//seeing if the x of mouse is in the box

      float thisUp=pos.y;
      float thisDown=pos.y+size.y;
      if (y<thisDown&&y>thisUp) {//seeing if the y of mouse is in the box
        return true;
      }
    }
    return false;
  }
  void show() {
    fill(255);
    rect(pos.x, pos.y, size.x, size.y);

    String s="Restart";
    fill(0);  
    float Size=1.5*(size.x/s.length());
    textSize(Size);
    redraw();
    float sWidth=textWidth(s);
    float sHeight=textAscent();
    text(s, pos.x+size.x/2-sWidth/2, pos.y+size.y/2+sHeight/2/2);
  }
  void restartGame() {
  turn='X';
  board=new Board();
  finished=false;
}
}
