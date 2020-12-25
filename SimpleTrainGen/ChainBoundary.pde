class ChainBoundary {
  Body body;
  Random gen=new Random();
  float colour=0;
  float w, h;
  int incOrDec;
  ArrayList <Vec2> surface;
  ChainBoundary() {
    surface=new ArrayList <Vec2>();
    float x=0;
    while (x<width) {
      float angle=map(x, 0, width, 0, PI*2);
      surface.add(new Vec2(x, height/3*noise(angle)+height/2));
      x+=1;
    }
    initiate();
  }
  ChainBoundary(PVector range) {
    surface=new ArrayList <Vec2>();
    float x=0;
    while (x<width) {
      float angle=map(x, 0, width, range.x, range.y);
      surface.add(new Vec2(x, height/3*sin(angle)+height/2));
      x+=1;
    }
    initiate();
  }
  ChainBoundary(PVector range, int choice) {
    surface=new ArrayList <Vec2>();
    float x=0;


    while (x<width) {
      float angle=map(x, 0, width, range.x, range.y);
      switch(choice) {
      case Tabee.Cos: 
        surface.add(new Vec2(x, height/3*cos(angle)+height/2));
        break;
      case Tabee.Sin: 
        surface.add(new Vec2(x, height/3*sin(angle)+height/2));
        break;
      case Tabee.Random: 
        surface.add(new Vec2(x, height/3*random(angle)+height/2));
        break;
      case Tabee.Gaussian: 
        angle=constrain((float)gen.nextGaussian(), 0, height);

        float std =  height/2;
        surface.add(new Vec2(x, height-angle*std));
        break;
      case Tabee.Perlin: 
        surface.add(new Vec2(x, height/3*noise(angle)+height/2));
        break;
      }

      x+=1;
    }
    initiate();
  }
  protected void initiate() {
    Shape shape = makeShape();
    // Build Body
    BodyDef bd = new BodyDef();      
    bd.type = BodyType.STATIC;

    //creating the body
    body=box2d.createBody(bd);

    //seeting body's fixture
    body.createFixture(shape, 1);
  }
  protected Shape makeShape() {
    //polygon shape creation
    ChainShape cs=new ChainShape();
    Vec2[] vertices=new Vec2[surface.size()];
    for (int i =0; i<surface.size(); i++) {
      vertices[i]=box2d.coordPixelsToWorld(surface.get(i));
    }
    cs.createChain(vertices, vertices.length);

    return cs;
  }
  // Drawing the boundary
  protected void display() {
    pushMatrix();
    colorMode(RGB, 100);
    fill(colour);
    stroke(0);
    strokeWeight(1);
    beginShape();
    for (Vec2 v : surface) {
      vertex(v.x, v.y);
    }
    vertex(width, height);
    vertex(0, height);
    endShape();

    popMatrix();
  }
  public void run() {
    display();
    if (colour>=50) {
      incOrDec=-1;
    }else if(colour<=0){
      incOrDec=1;
    }
    colour+=incOrDec;

  }
}
abstract class Tabee
{

  final static int Gaussian = 1;
  final static int Sin = 2;
  final static int Cos = 3;
  final static int Random = 4;
  final static int Perlin = 5;

  Tabee()
  {
  }
}
