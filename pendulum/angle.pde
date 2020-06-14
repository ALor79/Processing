class angle {
  float rad;
  float acc;
  float vel;
  float deg;

  angle(float input) {
    if (angleMode=="RAD"){
      rad=input;
      
    }
    else if (angleMode=="DEG"){
      deg=input;
      rad=PI*(deg/180);
    }
    vel=0;
    acc=0;
  }

  void update() {
    acc=-g*sin(rad);
    vel+=acc;
    rad+=vel;
  }
}
