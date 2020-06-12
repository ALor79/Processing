final color rainColor=color(120, 133, 255);

final int MAX=900;
Drop[] drops= new Drop[MAX];
void setup() {
  size (600, 800);
  for (int i=0; i<drops.length; ++i) {
    drops[i] =new Drop(rainColor);
  }
}
void draw() {
  background (0);
  for (int i=0; i<drops.length; ++i) {
    drops[i].fall();
    drops[i].show();
    drops[i].out();
  }
}
