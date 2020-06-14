
//we create an object drop first and the create an array of those objects
class Drop {
  float x; // x postion of drop
  float y; // y position of drop
  float z; // z position of drop , determines whether the drop is far or near
  float yspeed; // speed of te drop
  //int w;
  char c;
  //char arr[] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','ش','س','ی','Ä','ڬ','ح','خ'};
  int time;
  boolean firstTime=true;
  //near means closer to the screen , ie the higher the z value ,closer the drop is to the screen.
  Drop() {
    x  = random(width); // random x position ie width because anywhere along the width of screen
    y  = random(-500, -50); // random y position, negative values because drop first begins off screen to give a realistic effect
    z  = random(0, 30); // z value is to give a perspective view , farther and nearer drops effect

    yspeed  = map(z, 0, 20, 2, 10); // if z is near drop is faster
  }

  void fall() { // function  to determine the speed and shape of the drop 
    y = y + yspeed; // increment y position to give the effect of falling 
    time++;
    if (y > height) { // repositions the drop after it has 'disappeared' from screen
      y = random(-200, -100);
      yspeed = map(z, 0, 20, 2, 5);
      firstTime=true;
    }
  }
  void show() { // function to render the drop onto the screen


    if (time==(15)|| firstTime) {
      c=a[0].charAt(floor(random(50000)));
      time=0;
      firstTime=false;
    }
    fill(0, 255, 0);
    text(c, x, y);
  }
}
