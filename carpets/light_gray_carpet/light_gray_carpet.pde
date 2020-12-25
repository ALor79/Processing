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

      if(abs(b-r)<110&&abs(b-r)>60 &&(g<200&&g>90)){
        b=map(b,0,255,100,130);
        g=map(g,0,255,0,43);
        r=map(g,0,255,0,43);

        output.pixels[loc]=color(b,g,r);
         //print("red="+b+" green="+g+" blue="+r+"\n");
         //output.pixels[loc]=color(211,211,211);
      }else if(b<70&&abs(r-g)>50){
        //print("red="+b+" green="+g+" blue="+r+"\n");
        
          b=map(b,0,255,100,219);
        output.pixels[loc]=color(b,b,b);
        //output.pixels[loc]=color(211,211,211);
      }
      else {
        //print("red="+r+" green="+g+" blue="+b+"\n");
         b=map(b,0,255,30,55);
         output.pixels[loc]=color(b,b,b);
      //output.pixels[loc]=color(211,211,211);
      }
      
    }
  }
  output.updatePixels();
  image(output, 0, 0);
  save(i+".png");
}
