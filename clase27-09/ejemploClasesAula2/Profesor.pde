class Profesor{
  
  float x, y, t;
  
  Profesor( float x_ , float y_, float t_ ){
    x = x_;
    y = y_;
    t = t_;
  }
  
  void actualizar(){
  
  }
  
  void dibujar(){
    pushStyle();
    rectMode( CENTER );
    rect( this.x, y, t, t );
    popStyle();
  }
  
  
}
