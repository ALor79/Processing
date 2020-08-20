float angle;
float whereAbouts=200;
Slider slider;
void setup() {
  final float width_=140;
  final float height_=30;
  slider=new Slider(0,PI,width_/2+20,-height_+height,height_*(3.0/4),width_,height_);
  size(700, 700);
}
void draw() {
  background(51);
  slider.update();
  angle=slider.value;
  
  translate(width/2, height);
  branch(200);
}

void branch(float len) {


  if (len>2) {
    stroke(255);
    line(0, 0, 0, 0-len);
    translate(0, -len);
    push();
    rotate(angle);
    branch(len*2.0/3.0);

    pop();
    push();
    rotate(-angle);
    branch(len*2.0/3.0);
    pop();
  }
}
void mousePressed(){
  slider.clicked(mouseX,mouseY);
}
void mouseReleased(){
  slider.stopDragging();
}
