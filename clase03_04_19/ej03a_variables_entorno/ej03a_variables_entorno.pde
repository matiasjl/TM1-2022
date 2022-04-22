//VARIABLES DEL ENTORNO

//width = ancho del size
//height = alto del size
//frameCount = contador de ciclos del draw

void setup() {
  size(400, 400 );

  print( "hola " );
  println( "tecno 1" );
  println( "otra linea" );

  frameRate( 30 );
}

void draw() {
  //background( 255 );
  //ellipse( frameCount, height/2, 50, 50 );
  background( frameCount % 255 );
  fill( 255, 10 );
  strokeWeight( frameCount % 10 );
  ellipse( frameCount/2, frameCount/2, frameCount, frameCount );
  rect( width-frameCount, height-frameCount, frameCount, frameCount );

  //print( "frameCount: " );
  //println( frameCount );
  println( "frameCount: " + frameCount );  //+ concatenar texto

  //println( "%10: " + (frameCount % 10) );
}
