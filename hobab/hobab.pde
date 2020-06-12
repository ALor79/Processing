Bubble b;
void setup() {
  size(600,600);
  b=new Bubble();
}
void draw() {
  background(255);
  b.display();
  b.ascend();
  //delay(30);
  b.top();
  
  
}
void mousePressed() {
    b.Pop();
}
