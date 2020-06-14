final float density=1.922;
final float g=9.8/60/60;
PVector origin;
final float damping=0.995;
String angleMode="RAD";
Avang a;
void setup(){
  frameRate(60);
  size(640,480);
  origin=new PVector(width/2,0);
  a = new Avang(6,300);
}
void draw(){
  background(157);
  translate(origin.x,origin.y);

  a.update();
  a.display();
  
}
