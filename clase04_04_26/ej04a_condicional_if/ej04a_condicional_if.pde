//hola tecno 1 - condicionales1

float x1, y1, x2, y2;
int t;
int rellenoCircle;

void setup() {
  size( 400, 400 );
  noFill();
  rectMode( CENTER );  //

  x1 = y1 = 0;  //tip: doble asignacion
  x2 = y2 = 400;
  t = 100 ;  //tamaño compartido

  rellenoCircle = 255;   //circulo blanco

  frameRate( 15 );
}

void draw() {
  background( 255 );

  //println( keyPressed + ": " + rellenoCircle );
  if ( keyPressed ) {
    //aca deben escribir codigo para teclado  
    if ( key == ' ' ) {
      //fill( 0 );
      //rellenoCircle = 0;

      //FORMA 1
      /*
      if ( rellenoCircle == 0 ) {
        rellenoCircle = 255;
      }
      if ( rellenoCircle == 255 ) {
        rellenoCircle = 0;
      }
      */

      //FORMA 2
      if ( rellenoCircle == 0 ) {  //si
        rellenoCircle = 255;  //entonces
        println( "blanco" );
      } else {  //sino
        rellenoCircle = 0;  //entonces
        println( "negro" );
      }

      //FORMA 3 - sin IF
      //result = test ? expression1 : expression2
      //rellenoCircle = (rellenoCircle == 0) ? 255 : 0 ;
    }
  }

  //MOVIMIENTO ELLIPSE
  if ( x1 <= width/2 ) {
    if ( y1 <= height/2 ) {
      x1 = x1 + 1;
      y1++;  //forma resumida de incrementar en 1
    }
  }
  //MOVIMIENTO CUADRADO
  if ( x2 >= width/2 && y2 >= height/2 ) {
    x2 = x2 - 1;
    y2 -= 1; //forma resumida de decrementar en 1
  }



  //DIBUJO
  //
  fill( 255 );
  rect( x2, y2, t*1.5, t*1.5 );

  fill( rellenoCircle );
  circle( x1, y1, t );
}
