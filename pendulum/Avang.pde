class Avang {
  float mass;
  float size;
  float len;
  PVector position;
  boolean dragging=false;
  PVector dragOffset;
  angle tetha=new angle(PI/6);
  Avang(float m, float l) {
    len=l;
    mass=m;
    size=(mass/density)*20;
    position=new PVector(0, 0);
  }

  void update() {
    tetha.update();
    tetha.vel*=damping;
    position.x=len*sin(tetha.rad);
    position.y=len*cos(tetha.rad);
  }
  void display() {
    line(0, 0, position.x, position.y);
    ellipse(position.x, position.y, size, size);
  }
}
