class Estudiante{
  
  float x, y, t;
  boolean drag, estoyDentro;
  
  Estudiante(){
    x = random(50, width-50);
    y = random( 150, height-50);
    t = 50;
  }
  
  void actualizar(){
    // 1) aqui actualizo la variable drag
    if( mousePressed ){
      drag = true;
    }else{
      drag = false;
    }
    //drag = mousePressed ? true : false;
    
    // 2) aqui actualizo la variable estoyDentro
    float d = dist( x, y, mouseX, mouseY );
    if( d < t/2 )
      estoyDentro = true;
    else
      estoyDentro = false;
    
    println( "drag: " + drag );
    println( "estoyDentro: " + estoyDentro );
  }
  
  void moverConDrag(){
    // 3) ejecuto el movimiento a partir de drag y estoyentro
    if( drag && estoyDentro ){
      x = mouseX;
      y = mouseY;
    }
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
