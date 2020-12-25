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

      //if (i==15&&x==13&&y==1) {
      //  //print("red="+(r)+" green="+(g)+" blue="+(b)+"\n");
      //}
      if (r-b<200&&r-b>50 &&(g<200&&g>90)) {      //dor
        //242, 179, 21
        //244, 195, 69
        r=map(r, 200, 255, 242, 244);
        g=map(g, 100, 130, 179, 195);
        b=map(b, 50, 90, 21, 69);
        output.pixels[loc]=color(r, g, b);
      } else if (b<70&&abs(r-g)>50||(b<10&&g<10&&r>30)) {        //asli
          //255, 106, 26
        //  230, 80, 0
        //print("red="+(r)+" green="+(g)+" blue="+(b)+"\n");

        r=map(r, 50, 180, 230, 255);
        g=map(g, 0, 70, 80, 106);
        b=map(b, 0, 65, 0, 26);

        output.pixels[loc]=color(r, g, b);
      } else {              //motazad

        //print("red="+(r)+" green="+(g)+" blue="+(b)+"\n");
        //0, 159, 135
        //  0, 82, 70
        r=map(r, 0, 50, 0, 0);
        g=map(g, 0, 150, 82, 159);
        b=map(b, 0, 190, 70, 135);
        output.pixels[loc]=color(r+30, g+30, b+30);
      }
    }
  }
  output.updatePixels();
  image(output, 0, 0);
  save(i+".png");
}
