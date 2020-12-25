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
        //print(g+"\n");
        
      }

      
      if(abs(b-r)<110&&abs(b-r)>60 &&(g<200&&g>90)){
        //    226, 91, 53
        //    232, 127, 97
        r=map(r,200,255,226,232);
        g=map(g,100,130,91,127);
        b=map(b,50,90,53,97);
        output.pixels[loc]=color(r,g,b);

         
      }else if(b<70&&abs(r-g)>50){
        //93, 56, 45
        //127, 77, 62
        //print("red="+(r)+" green="+(g)+" blue="+(b)+"\n");

        r=map(r,50,180,93,127);
        g=map(g,0,70,56,77);
        b=map(b,0,65,45,62);
        
        output.pixels[loc]=color(r,g,b);
      }
      else {
        // 102, 205, 170
        //140, 218, 191
        //r=map(r,0,255,103,140);
        //g=map(g,0,255,205,218);
        //b=map(b,0,255,170,191);
        output.pixels[loc]=color(r,g,b);
        
      }
      
    }
  }
  output.updatePixels();
  image(output, 0, 0);
  save(i+".png");
}
