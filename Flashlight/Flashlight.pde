
PImage hamster;
float X=0;
boolean reverse=false;
void setup() {
  hamster = loadImage("1.png");

    
size(620, 330);

}
void draw() {


loadPixels();
background(255);
for ( int x=0; x<width; x++) {
  for ( int y=0; y<height; y++) {
    
    int loc=x+(y)*width;
    float r =red(hamster.pixels[loc]);
    float g=green(hamster.pixels[loc]);
    float b =blue(hamster.pixels[loc]);
    float d=dist(mouseX,mouseY,x,y);
    float factor=map(d,0,200,2,0); //<>//
      pixels[loc]=color(r*factor,g*factor,b*factor);
    
  }
}
updatePixels();
if(X>width){
  reverse=true;
}
if(X<0){
  reverse=false;
}
if(!reverse){
X+=3;
}
else{
X-=3;
}

}
