String []a ;

Drop[] drops = new Drop[300]; // array of drop objects

void setup() {
  size(640, 480); // size of the window
  //create the drops
  a=loadStrings("utf8_sequence_0-0x10ffff_assigned_including-unprintable-asis.txt");
  
for(int i=0;i<drops.length;i++){
    drops[i]=new Drop();
  }

  
}

void draw() {
  background(0); // background color in RGB color cordinates
 //set shape and speed of drop and render it
 

 for(int i=0;i<drops.length;i++){
    drops[i].fall();
    drops[i].show();
  }
   //saveFrame("Frames/matrix_####.png");
}
