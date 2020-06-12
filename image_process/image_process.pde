//int x=10, y=10;
PImage hamster;
float X=0;
boolean reverse=false;
//final int LightLevel=150;
void setup() {
  hamster = loadImage("1.png");

    
size(620, 330);

}
void draw() {


loadPixels();
background(255);
for ( int x=0; x<width; x++) {
  for ( int y=0; y<height; y++) {
    //int d=(int)dist(x,y,mouseX,mouseY);
    ////d=(int)map(d,0,width,0,255);
    //if(d>LightLevel){
    //  d=LightLevel;
    //}
    int loc=x+(y)*width;
    float r =red(hamster.pixels[loc]);
    float g=green(hamster.pixels[loc]);
    float b =blue(hamster.pixels[loc]);
    if(x<X){
    pixels[loc]=color(r,g,b); //<>//
  }
    else{
      pixels[loc]=color(255-g,255-r,255-b);
    }
        //pixels[loc]=color(LightLevel-d,LightLevel-d,0);
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
