class ChainBoundary {
  Body body;

  float w, h;
  ArrayList <Vec2> surface;
  ChainBoundary(){
    surface=new ArrayList <Vec2>();
    surface.add(new Vec2(0,height/2));
    surface.add(new Vec2(width/4,height/2+100));
    surface.add(new Vec2(width/2,height/2-50));
    surface.add(new Vec2(3*width,height/3));
    surface.add(new Vec2(width,height/2));
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
    body.createFixture(shape,1);
  }
  protected Shape makeShape(){
    //polygon shape creation
    ChainShape cs=new ChainShape();
    Vec2[] vertices=new Vec2[surface.size()];
    for (int i =0;i<surface.size();i++){
      vertices[i]=box2d.coordPixelsToWorld(surface.get(i));
    }
    cs.createChain(vertices,vertices.length);
    
    return cs;  
  }
  // Drawing the boundary
  protected void display() {
    
    fill(0);
    stroke(0);
    strokeWeight(1);
    beginShape();
    for(Vec2 v: surface){
          vertex(v.x,v.y);
    }
    vertex(width,height);
    vertex(0,height);
    endShape(CLOSE);
  }
  public void run(){
    display();
  }
}
