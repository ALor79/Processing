
PImage hamster;
float X=0;
boolean reverse=false;
void setup() {
  hamster = loadImage("5.png");

    
size(1200, 1115);

}
void draw() {


loadPixels();
background(255);
for ( int x=0; x<width; x++) {
  for ( int y=0; y<height; y++) {
    
    int loc=x+(y)*width;
    float b=brightness(hamster.pixels[loc]);
    //float r =red(hamster.pixels[loc]);
    //float g=green(hamster.pixels[loc]);
    //float b =blue(hamster.pixels[loc]);
    //float d=dist(mouseX,mouseY,x,y);
    float threshold=map(mouseX,0,width,0,255);
    if(b<threshold){ //<>//
      pixels[loc]=color(0);
    }
     else{
       pixels[loc]=color(255);
     }
     
    
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
