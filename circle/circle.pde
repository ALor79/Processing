void setup(){
  size(720,1080);
}
void draw(){
  if(mousePressed)
  {
    fill(10,100,21);
  }
  else
  {
    fill(255,100,21);
  }
  ellipse(mouseX,mouseY,80,80);
}
