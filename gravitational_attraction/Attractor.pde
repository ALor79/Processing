class Attractor {
  float mass;
  PVector pos;
  boolean dragging=false;
  PVector dragOffset;
  Attractor(float m/*, PVector p*/) {
    pos=new PVector(width/2, height/2);
    mass=m;
    dragOffset = new PVector(0,0);
  }
  void display() {
    ellipseMode(CENTER);
    strokeWeight(2);
    stroke(0);
    
    if (dragging)
      fill(50);
    else
      fill(175, 200);
      
    ellipse(pos.x, pos.y, mass*2, mass*2);
  }
  PVector attract (Mover m) {
    PVector Force=PVector.sub(pos, m.pos);
    float d=Force.mag();
    d=constrain(d, 5, 25);
    Force.normalize();
    Force.mult(G*mass*m.mass);
    Force.div(d*d);
    return Force;
  }
    void drag() {
    if (dragging) {
      pos.x = mouseX + dragOffset.x;
      pos.y = mouseY + dragOffset.y;
    }
  }
  void clicked(int x,int y){
    float d = dist(x,y,pos.x,pos.y);
    if (d < mass) {
      dragging = true;
      dragOffset.x = pos.x-x;
      dragOffset.y = pos.y-y;
    }
  }
  
  void stopDragging() {
    dragging = false;
  }
  
  
}
