class Spring {
  PVector anchor;
  float restLength;
  float k;
  Spring(float constant, float rl, PVector anchor_) {
    k=constant;
    restLength=rl;
    anchor=anchor_.copy();
  }
  void connect(Bob b) {
    PVector springForce=PVector.sub(b.pos, anchor);
    float d=springForce.mag();
    springForce.normalize();
    //float k=0.5;
    float displacement=d-restLength;
    springForce.mult(-k*displacement);
    b.applyForce(springForce);
  }
}
