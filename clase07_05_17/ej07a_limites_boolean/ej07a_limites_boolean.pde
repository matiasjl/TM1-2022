
//repaso y consultas del tp1: limites y booleans

int inc;
boolean dibujarNumEnPantalla;

void setup() {
  size(400, 400 );
  frameRate( 15 );
  textSize( 42 );

  inc = 0;
  dibujarNumEnPantalla = true;
}

void draw() {
  background( inc );

  //calculo
  if ( inc < 255 ) {  //pregunta del cuando
    inc++;
  }

  if ( inc == 255 ) {  //"cuando llege a ese numero"
    dibujarNumEnPantalla = false;
  }

  //dibujo
  if ( dibujarNumEnPantalla ) {  //boleana que afecta al dibujado del texto
    fill( 255 - inc );  //color opuesto
    text( inc, 70, 100 );
  }
}

void keyPressed() {
  //opcion a: con dos teclas
  if ( key == 'a' )
    dibujarNumEnPantalla = false;
  if ( key == 's' )
    dibujarNumEnPantalla = true;

  //opcion b: misma tecla con else
  if ( key == ' ' ) {
    //
    if ( dibujarNumEnPantalla == true ) {
      dibujarNumEnPantalla = false;
    } else {
      dibujarNumEnPantalla = true;
    }
    //
  }

  //opcion c: misma tecla con operador negativo
  if( key == '1' )
    dibujarNumEnPantalla = !dibujarNumEnPantalla;
}
