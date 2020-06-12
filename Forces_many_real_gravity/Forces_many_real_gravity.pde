
Mover[] movers = new Mover[5];

void setup() {
  size(640, 360);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 4), random(0, width), 0);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < movers.length; i++) {


    PVector gravity = new PVector(0, 0.1*movers[i].mass);


    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
}

void keyPressed() {
  switch(key) {
  case 'd':
    for (int i = 0; i < movers.length; i++) {
      PVector wind = new PVector(3, 0);
      movers[i].applyForce(wind);
    }
    break;
  case 's':
    for (int i = 0; i < movers.length; i++) {
      PVector wind = new PVector(0, 3);
      movers[i].applyForce(wind);
    }
    break;
  case 'w':
    for (Mover m: movers) {
      PVector wind = new PVector(0, -3);
      m.applyForce(wind);
    }
    break;
  case 'a':
    for (Mover m: movers) {
      PVector wind = new PVector(-3, 0);
      m.applyForce(wind);
    }
    break;
  default:
    // code block
  }
}
