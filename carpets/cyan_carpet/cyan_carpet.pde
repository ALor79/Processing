//int x=10, y=10;

//final int LightLevel=150;
PImage [] imgs =new PImage[48];
PImage output = createImage(16, 16, RGB);
//void setup() {
for (int i=0; i<=47; i++) {
  if (i==11) {
    continue;
  }
  imgs[i]=loadImage(i+".png");
}
size(16, 16);
//size(500, 500);

for (int i=0; i<=47; i++) {
  if (i==11) {
    continue;
  }
  output.loadPixels();
  for ( int x=0; x<16; x++) {
    for ( int y=0; y<16; y++) {
      
      int loc=x+(y)*16;
      
      float r =red(imgs[i].pixels[loc]);
      float g=green(imgs[i].pixels[loc]);
      float b =blue(imgs[i].pixels[loc]);
       if(x==11&&y==10){
        print(g+"\n");
        
      }

      
      if(abs(b-r)<110&&abs(b-r)>60 &&(g<200&&g>90)){
        //237, 183, 171
        r=map(r,0,255,210,260);
        g=map(g,0,255,160,200);
        b=map(b,0,255,160,190);
        output.pixels[loc]=color(r,g,b);

      }else if(b<70&&abs(r-g)>50){
        //print("red="+b+" green="+(g+140)+" blue="+r+"\n");
         r=map(r,0,255,0,178);
        g=map(g,0,255,204,255);
        b=map(b,0,255,204,255);
        output.pixels[loc]=color(r,g,b);
      }
      else {


        //print("red="+b+" green="+g+" blue="+r+"\n");
        //255,62,62
        g=map(g,0,255,62,150);
        b=map(b,0,255,62,150);
        output.pixels[loc]=color(255,g,b);
        
      }
      
    }
  }
  output.updatePixels();
  image(output, 0, 0);
  save(i+".png");
}
