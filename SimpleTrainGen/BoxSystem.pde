class BoxSystem {
  float colour;
  ArrayList<Box> boxes;
  BoxSystem() {
    colour=0;
    boxes= new ArrayList<Box>();
  }
  void run() {
    // Display all the particles
    for (Box b : boxes) {
      b.run();
    }
    for (int i =boxes.size()-1; i>0; i--) {
      Box b = boxes.get(i);
      if (b.done()) {
        boxes.remove(i);
      }
    }
  }
  void addBox() {
    if (colour<100) {
      colour++;
    } else {
      colour=0;
    }
    Box b = new Box(mouseX, mouseY, random(10, 16), random(10, 16), colour);
    boxes.add(b);
  }
}
