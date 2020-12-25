class Face{
  PVector normal;
  color col;
  Face(PVector normal, color col ){
    this.normal = normal;
    this.col = col;
  }
  void turnZ(float angle){
    PVector v2 = new PVector();
    v2.x=round(normal.x*cos(angle)-normal.y*sin(angle));    
    v2.y=round(normal.x*sin(angle)+normal.y*cos(angle));
    v2.z=normal.z;
    normal = v2;
    
  }  
  void turnX(float angle){
    PVector v2 = new PVector();
    v2.y=round(normal.y*cos(angle)-normal.z*sin(angle));    
    v2.z=round(normal.y*sin(angle)+normal.z*cos(angle));
    v2.x=normal.x;
    normal = v2;
  }
  void turnY(float angle){
    PVector v2 = new PVector();
    v2.x=round(normal.x*cos(angle)-normal.z*sin(angle));    
    v2.z=round(normal.x*sin(angle)+normal.z*cos(angle));
    v2.y=normal.y;
    normal = v2;
  }
  void show(){
    pushMatrix();
    fill(col);
    noStroke();
    rectMode(CENTER);
    //rotate(HALF_PI,normal.x,normal.y,normal.z);
    translate(0.5*normal.x,0.5*normal.y,0.5*normal.z);
     if(abs(normal.x)>0){
      rotateY(HALF_PI);
    }else if(abs(normal.y)>0){
      rotateX(HALF_PI);
    }
    square(0,0,1);
    popMatrix();
  }


}
