class Orb {

  float vx;
  float vy;
  float m;
  //double momentum;
  float x;
  float y;
  int red=100;
  int green=100;
  int blue=98;
  
  float radius=40;
  Orb(float X, float Y, float M, float Vx, float Vy, float r) {
    vx=Vx;
    vy=Vy;
    m=M;
    x=X;
    y=Y;
    radius=r;
  }
  Orb(float X, float Y, float M) {
    vx=random(10);
    vy=random(10);
    m=M;
    x=X;
    y=Y;
  }
  Orb(float M, float Vx, float Vy, float r) {
    vx=Vx;
    vy=Vy;
    m=M;
    radius=r;
    x=random(width);
    y=random(height);
  }
  void display() {
    fill(red,green,blue);
    ellipse(x, y, radius*2, radius*2);
  }
  void move() {
    x+=vx;
    y+=vy;

  }
  void hitOrb(Orb other) {

    if (dist(other.x, other.y, x, y)<=other.radius+radius) {
      red=round(random(255));
      blue=(int)random(255);
      green=floor(random(256));
      other.red=round(random(255));
      other.blue=(int)random(255);
      other.green=floor(random(256));
      float ux=vx;
      float uy=vy;
      //float deltm=;
      float sigm=m+other.m;
      vx=((m-other.m)/sigm)*vx+(other.m/sigm)*other.vx;
      println(vx);
      vy=((m-other.m)/sigm)*vy+(other.m/sigm)*other.vy;
      other.vx=((other.m-m)/sigm)*other.vx+(m/sigm)*ux;
      other.vy=((other.m-m)/sigm)*other.vy+(m/sigm)*uy;
      //println(vx);
    }
  }
  void hitSide() {

    if (x+radius>width||x-radius<0) {

      vx=-vx;
    }
    if (y+radius>height||y-radius<0) {
      //println("man dorostam");
      vy=-vy;
    }
  }
}
