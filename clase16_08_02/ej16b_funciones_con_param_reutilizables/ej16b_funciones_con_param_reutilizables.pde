
int Estado = 0;

void setup(){
  size( 800, 400 );
  background( 255 );
  
  texto( "Bienvenido a", 160, 100, 50, 0 );
  texto( "La gula de Homero", 90, 150, 50, 0 );

  texto( "lalalala", 90, 200, 30, 128 );
  texto( "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.\n Pellentesque a semper dui,\n a ultrices felis", 90, 250, 15, 100 );

}

void draw(){
  boolean resultado = mouseOver( 400, 200, 100 );
  println( resultado );
  
  if( resultado ){
    fill( 255, 0, 0 );
  }else{
    fill( 255 );
  }
  circle( 400, 200, 100 ); 
}

boolean mouseOver( float _px, float _py, float _d ){
  if ( dist (mouseX, mouseY, _px, _py) < _d / 2 ) {
    return true;
  }else{
    return false;
  }
}

void texto( String t, float x, float y, int tam, int c ){
  pushStyle();
  fill( c );
  textSize( tam );
  text( t, x, y );
  popStyle();
}

void setEstado( int i ) {
  Estado = i;
  //Estado = variable global (no buena practica)
  //i = nuevo valor de Estado
}

int getEstado() {
  return Estado;
}
