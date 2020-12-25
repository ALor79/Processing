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
color asli_upper=color(#990099);
color asli_lower=color(#770077);
color dor_upper=color(#ffc422);
color dor_lower=color(#d59b00);
color motazad_upper=color(#FFFF33);//
color motazad_lower=color(#FFbb00);//

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


      if (r-b<200&&r-b>50 &&(g<200&&g>90)) {      //dor

        r=map(r, 0, 255, red(dor_lower)-20, red(dor_upper));
        g=map(g, 0, 255, green(dor_lower)-20, green(dor_upper));
        b=map(b, 0, 255, blue(dor_lower)-20, blue(dor_upper));
        output.pixels[loc]=color(r, g, b);
      } else if (b<70&&abs(r-g)>50||(b<10&&g<10&&r>40)) {        //asli

        //print("red="+(r)+" green="+(g)+" blue="+(b)+"\n");

        r=map(r, 50, 180, red(asli_lower), red(asli_upper));
        g=map(g, 0, 70, green(asli_lower), green(asli_upper));
        b=map(b, 0, 65, blue(asli_lower), blue(asli_upper));

        output.pixels[loc]=color(r, g, b);
      } else {              //motazad

        //print("red="+(r)+" green="+(g)+" blue="+(b)+"\n");

        r=map(r, 0, 255, red(motazad_lower), red(motazad_upper));
        g=map(b, 0, 255, green(motazad_lower), green(motazad_upper));
        b=map(b, 0, 255, blue(motazad_lower), blue(motazad_upper));
        output.pixels[loc]=color(r+10, g+10, b+10);
      }
    }
  }
  output.updatePixels();
  image(output, 0, 0);
  save(i+".png");
}
