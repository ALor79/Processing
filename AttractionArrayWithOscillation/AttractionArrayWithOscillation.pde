//dan shiffman
Crawler[] crawlers = new Crawler[3];
Attractor a;

void setup() {
  size(640,360);
  // Some random bodies
  for (int i = 0; i < crawlers.length; i++) {
    crawlers[i] = new Crawler();
  }
  // Create an attractive body
  a = new Attractor(new PVector(width/2,height/2),20,0.4);
}

void draw() {
  background(255);
  a.rollover(mouseX,mouseY);
  a.go();

  for (int i = 0; i < crawlers.length; i++) {
    // Calculate a force exerted by "attractor" on "Crawler"
    PVector f = a.attract(crawlers[i]);
    // Apply that force to the Crawler
    crawlers[i].applyForce(f);
    // Update and render
    crawlers[i].update();
    crawlers[i].display();
  }


}

void mousePressed() {
  a.clicked(mouseX,mouseY);
}

void mouseReleased() {
  a.stopDragging();
}
