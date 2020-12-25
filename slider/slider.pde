Scroller scroller; 
void setup(){
  size(480,480);
  scroller=new Scroller(200,100);
  
}
void draw(){
  background(57);

  scroller.update();
}
void mousePressed(){
  scroller.clicked(mouseX,mouseY);
}
void mouseReleased(){
  scroller.stopDragging();
}
