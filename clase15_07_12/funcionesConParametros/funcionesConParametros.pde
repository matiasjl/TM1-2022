
// repasando funciones: texto y ojo

void setup(){
  size( 500, 500 );
}
void draw(){
  background( 100 );
  
  texto( "Juano", 30, 100, 100, 0 );
  texto( "Juana", 50, 300, 150, 50 );
  texto( "Juane", 30, 200, 300, 100 );
  
  ojoConParam( int(random(100)), 200, 200, color( 200, 0, 0 ) );
  ojoConParam( 50, 200, 400, color( 0, 150, 0 ) );
  ojoConParam( 150, 500, 350, color( 200, 0, 200 ) );
}

void ojoConParam( int t, float x, float y, color c ){  //t = variable local a.k.a. parametro
  pushStyle();
  fill (255);
  ellipse( x, y, t*2, t);

  fill ( c );
  circle ( x, y, t/4*3);

  fill(0);
  circle ( x, y, t/2);
  popStyle();
}

void texto( String texto, float tam, float x, float y, float hue ){
  
  //rect( x, y, 
  
  pushStyle();
  colorMode( HSB, 360, 100, 100 );
  fill( hue, 100, 100 );
  textAlign( CENTER );
  textSize( tam );
  text( texto, x, y );
  popStyle();
} 
