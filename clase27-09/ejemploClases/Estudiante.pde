class Estudiante{
  
  float x, y, t;
  
  Estudiante(){
    x = random(50, width-50);
    y = random( 150, height-50);
    t = 50;
  }
  
  void actualizar(){
  
  }
  
  void dibujar(){
    pushStyle();
    fill(0);
    circle( x, y, t );
    popStyle();
  }
  
  float calcularDistancia(){
    return 0;
  }
  
}
