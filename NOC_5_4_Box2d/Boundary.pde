// A rectangular box
class Boundary {
  Body body;

  float w, h;
  float angle;
  // Constructor
  Boundary(float x, float y) {
    w = 16;
    h = 16;
    initiate(x, y);
  }
  Boundary(Vec2 pos) {
    w = 16;
    h = 16;
    initiate(pos.x, pos.y);
  }
  Boundary(PVector pos) {
    w = 16;
    h = 16;
    initiate(pos.x, pos.y);
  }
  Boundary(float x, float y, float w, float h) {
    this.w = w;
    this.h = h;
    initiate(x, y);
  }
  protected void initiate(float x, float y) {
    // Build Body
    BodyDef bd = new BodyDef();      
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x, y));

    //creating the body
    body=box2d.createBody(bd);

    Shape shape = makeShape();

    //fixture definition
    FixtureDef fd = new FixtureDef();
    fd.shape = shape;


    //// Parameters that affect physics
    //fd.density = 1;
    //fd.friction = 0.3;
    //fd.restitution = 0.5;

    //seeting body's fixture
    body.createFixture(fd);
  }
  protected Shape makeShape(){
    //polygon shape creation
    Shape ps=new PolygonShape();
    float tempWidth = box2d.scalarPixelsToWorld(w/2);
    float tempHeight = box2d.scalarPixelsToWorld(h/2);
    if (ps instanceof PolygonShape)
      ((PolygonShape) ps).setAsBox(tempWidth, tempHeight);
  return ps;  
  }
  // Drawing the box
  protected void display(Vec2 pos) {


    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-angle);
    fill(0);
    stroke(0);
    strokeWeight(2);
    rectMode(CENTER);
    rect(0, 0, w, h);
    popMatrix();
  }

  public void run() {
    angle=body.getAngle();
    Vec2 pos=box2d.getBodyPixelCoord(body);
    //if (pos.x-w>width || pos.y-h>height ||pos.x+w<0){
    //  box2d.destroyBody(body);
    //}else{
    display(pos);
    //}
  }
}
