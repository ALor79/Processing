import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
BodyDef bd ;
Box2DProcessing box2d;
void setup(){
  size(640,480);
  box2d=new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -4);
  bd= new BodyDef();
  Vec2 center = box2d.coordPixelsToWorld(width/2,height/2);
  bd.position.set(center);
  
}
void draw(){
  Body body=box2d.createBody(bd);
  
  background(51);
  Vec2 mouseWorld = box2d.coordPixelsToWorld(mouseX,mouseY);
}
