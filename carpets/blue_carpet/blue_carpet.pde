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

for (int i=0; i<=0; i++) {
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
       if(loc==31){
        print("red="+b+" green="+(g)+" blue="+r+"\n");
        
      }

      
      if(abs(b-r)<110&&abs(b-r)>60 &&(g<200&&g>90)){
         float lightness=100;
        output.pixels[loc]=color(r+lightness,g+lightness,b+lightness);

         //print("red="+(r-150)+" green="+(g)+" blue="+(b-150)+"\n");
      }else if(b<70&&abs(r-g)>50){
        //print("red="+b+" green="+(g)+" blue="+r+"\n");
        //r=map(r,0,255,200,255);
        r=map(r,0,255,0,20);
        
        output.pixels[loc]=color(r,r,r);
      }
      else {
        //255, 205, 0
        //255, 215, 51
        //print("red="+b+" green="+g+" blue="+r+"\n");
        r=map(r,0,255,230,255);
        g=map(g,0,255,205,215);
        b=map(b,0,255,0,51);
        output.pixels[loc]=color(r,g,b);
        //output.pixels[loc]=color(0);
      }
      
    }
  }
  output.updatePixels();
  image(output, 0, 0);
  save(i+".png");
}
