//final float etha = 0.3;
Orb o1;
Orb o2;
int frames=0;
void setup() {
  size(1000,800);
  o1 = new Orb(50, height-41, 8, 7, 20,40);
  o2 = new Orb(width-41, height-41, 6, -10, -7,30);
}
void draw(){
  background(0);
  //if (frames%30==0)
  o2.hitOrb(o1);
  
  o2.move();
  o1.move();
  o1.display();
  o2.display();
    

  //o1.hitOrb(o2);

   //delay(20);
  o1.hitSide();
  o2.hitSide();
  //o1.hitOrb(o2);

}
