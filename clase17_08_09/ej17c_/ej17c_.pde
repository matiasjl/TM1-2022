
// minijuego tipo frog

int c = 10;
int t;

float[] v = new float[c];  //velocidad
float[][] p = new float[c][2];  //posicion
int[] co = new color[c];  //color

void setup(){
  size( 400, 400 );
  //frameRate(10);
  
  t = height / c ;
  
  for( int i = 0 ; i < c ; i++ ){
    //v[i] = random( 1, 3 );  //aca setear la velocidad
    //co[i] = round( random( 255 ) );  //color gris aleatorio
    //p[i][0] = random( -400, -t );  //posX
    reciclar( i );
    p[i][1] = i * t;  //posY, distanciados equidistantemente
    //
    //otra manera con doblefor anidado:
    //for( int j = 0 ; j < 2 ; j ++ ){
    //  p[i][j] = random( 0, -400 );
    //}
  }
  
  
}

void draw(){
  background( 255 );
  
  for( int i = 0 ; i < c ; i++ ){
    //calcular
    p[i][0] += v[i];  //actualizo posX sumando velocidad
    //
    if( p[i][0] > width ){  //SI PASO EL BORDE DERECHO, RECICLO
      //p[i][0] = random( -400, -t );  //le asigno una nueva posicion inicial
      //v[i] = random( 1, 3 );  //le asigno una nueva velocidad
      //co[i] = round( random( 255 ) );  //color gris aleatorio
      reciclar( i );
    }
    //dibujar
    fill( co[i] );
    rect( p[i][0], p[i][1], t, t );
  }
  
  //personaje con el mouse
  //calcular
  //colision( float[][] posE, float posPX, float posPY, int r ) {
  colision( p, mouseX, mouseY, t/2 );
  //dibujar
  personaje();
}

void keyPressed(){
  //testing de funcion reciclar() con teclado
  int numPresionado = keyCode-48;  //keyCode = teclas del teclado numeradas
  if( numPresionado >= 0 && numPresionado <= 9 ){
    reciclar( numPresionado );
  }
  
  //testing de funcion reciclarArray()
  if( key == 'z' )
    reciclarArray( v, 1, 3, false );  //velocidad
  if( key == 'x' )
    reciclarArray( co, 0, 255, true );  //color

}
