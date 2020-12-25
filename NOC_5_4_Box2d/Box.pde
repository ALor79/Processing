// A rectangular box
class Box  {
  Body body;

  float w,h;
  float angle;
  // Constructor
  Box(float x, float y) {
    w = 16;
    h = 16;
    initiate(x,y);
  }
    Box(Vec2 pos) {
    w = 16;
    h = 16;
    initiate(pos.x,pos.y);
  }
  Box(PVector pos) {
    w = 16;
    h = 16;
    initiate(pos.x,pos.y);
  }
  Box(float x,float y, float w, float h) {
    this.w = w;
    this.h = h;
    initiate(x,y);
  }
  private void initiate(float x, float y){
  // Build Body
    BodyDef bd = new BodyDef();      
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    
    //creating the body
    body=box2d.createBody(bd);
    
    //polygon shape creation
    PolygonShape ps=new PolygonShape();
    float tempWidth = box2d.scalarPixelsToWorld(w/2);
    float tempHeight = box2d.scalarPixelsToWorld(h/2);
    ps.setAsBox(tempWidth,tempHeight);
    
    
    //fixture definition
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    
    
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;
    
    //seeting body's fixture
    body.createFixture(fd);
  }
  // Drawing the box
  private void display(Vec2 pos) {
    
    
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-angle);
    fill(127);
    stroke(0);
    strokeWeight(2);
    rectMode(CENTER);
    rect(0,0,w,h);
    popMatrix();
  }

  public void run(){
    angle=body.getAngle();
    Vec2 pos=box2d.getBodyPixelCoord(body);
    display(pos);
    
  }
    // This function removes the particle from the box2d world
  private void killBody() {
    box2d.destroyBody(body);
  }

  // Is the particle ready for deletion?
  public boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Is it off the bottom of the screen?
    if (pos.y > height+w*h) {
      killBody();
      return true;
    }
    return false;
  }
}
