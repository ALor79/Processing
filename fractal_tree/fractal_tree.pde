float angle;
float whereAbouts=200;
void setup() {
  size(700, 700);
}
void draw() {
  angle=map(mouseX, 0, 400, 0, 2*PI);
  background(51);
  translate(width/2, height);
  branch(200);
}

void branch(float len) {

  //println(whereAbouts);


  if (len>2) {
    //strokeWeight(thickness);
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
