
// Explicación de función dist(x1, y1, x2, y2)   //distancia

float x1, y1;
float diametro;

int direccion = 1;

void setup() {
  size( 500, 200 );
  textSize( 36 );

  x1 = 100;
  y1 = 100;
  diametro = 80;
}

void draw() {
  background( 200 );

  //machete en texto
  stroke( 0 );
  fill( 255 );
  //diametro
  text( "d: " + diametro, 250, 50 );
  //radio
  float r = diametro / 2;
  text( "r: " + r, 250, 100 );
  //largo de la linea roja
  float largo = dist( x1, y1, mouseX, mouseY );
  text( "l: " + largo, 250, 150 );
  //estoy adentro del circle?
  boolean estoyAdentro = largo < r;  //distancia menor al radio

  //------------------------------------------------------
  //zona circular - potencial boton
  stroke( 0 );
  if( estoyAdentro ){  //si
    fill( 0 );
  }else{  //sino
    fill( 255 );
  }
  circle( x1, y1, diametro );

  //linea roja
  stroke( 255, 0, 0 );
  line( x1, y1, mouseX, mouseY );
  
  //flashada: diametro incrementable
  /*
  if( r <= 140 )  
    diametro += 0.3;
  else
    diametro = 0;
  */
  //flashada 2: crece y decrece
  if( r < 0 ){  //instante
    direccion = 1;
    println( "agrandar" );
  }
  if( r > 140 ){  //instante
    direccion = -1;
    println( "achicar" );
  }
  diametro += direccion;

  //background( 200 );  //OJO con ponerlo al final de draw: tapa el dibujo
}
