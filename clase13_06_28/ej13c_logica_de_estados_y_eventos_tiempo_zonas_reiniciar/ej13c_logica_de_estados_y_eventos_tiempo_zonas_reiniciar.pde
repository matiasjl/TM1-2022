
int umbral = 20;  //cantidad de clics para ganar

//logica de estados

String estado;
int contadorTiempo;
int contadorDeClics;
color relleno;

void setup() {
  size(500, 500 );
  textSize( 24 );
  textAlign( CENTER, CENTER );

  estado = "inicio";
  contadorTiempo = 0;
  contadorDeClics = 0;
  relleno = color( 255 );
}

void draw() {
  //logica de estados y eventos

  //if( estado == "inicio" ){
  if ( estado.equals("inicio") ) {
    background( 200, 0, 0 );
    text( estado, width/2, height/2 );
    text( "presione la barra espaciadora para continuar", width/2, height/2+50 ); 
    //
  } else if ( estado.equals("instrucciones") ) {
    background( 200, 100, 0 );
    text( estado, width/2, height/2 );  
    //
    //boton con mouse over
    pushStyle();
    if ( dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
      fill( 200, 0, 0 );
    } else {
      fill( 0 );
    }
    ellipse( width/2, height/2+100, 50, 50 );
    popStyle();
    //
  } else if ( estado.equals("jugando") ) {
    background( 100, 0, 200 );
    text( estado, width/2, height/2 );    
    pushStyle();
    fill( relleno );
    rect( 150, 150, 200, 200 );  //Zona a clickear
    fill( 0 );
    text( contadorDeClics, 250, 250 );
    popStyle();
    //--------------------------------------------
    //CONDICION DE GANAR
    if ( contadorDeClics >= umbral ) {
      estado = "ganar";
    }
    //--------------------------------------------
    //CONDICION DE PERDER
    //corro el tiempo aumentado el contador
    contadorTiempo++;
    println( contadorTiempo );
    println( contadorTiempo/60 );
    //evaluo el tiempo para pasar perder
    if ( contadorTiempo >= 5*60 ) {
      estado = "perder";
    }
    //--------------------------------------------
  } else if ( estado.equals("ganar") ) {
    background( 200, 200, 0 );
    text( estado, width/2, height/2 );  
    //
  } else if ( estado.equals("perder") ) {
    background( 200, 0, 200 );
    text( estado, width/2, height/2 );
    //
  }
}

void keyPressed() {
  //evento que cambia de inicio a instrucciones
  if ( estado.equals("inicio") && key == ' ' ) {
    estado = "instrucciones";
  }
  //condicion para reiniciar
  if ( keyCode == ENTER ) {
    if ( estado.equals("perder") || estado.equals("ganar") ) {
      reiniciar();
    }
  }
}

void mousePressed() {
  //evento que cambia de instrucciones a jugando
  if ( estado.equals("instrucciones") && dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
    estado = "jugando";
  }
  //
  //evento que suma al contador de clics
  //rect( 150, 150, 200, 200 );  //Zona a clickear
  if ( estado.equals("jugando") ) {
    if ( mouseX > 150 && mouseX < 150+200 && mouseY > 150 && mouseY < 150+200 ) {
      contadorDeClics += 1;
      relleno = color( 200, 0, 0 );
    }
  }
}

void mouseReleased() {
  if ( estado.equals("jugando") ) {
    relleno = color( 255 );
  }
}


//AQUI LA MAGIA: volver TODAS las variables a su valor INICIAL
void reiniciar() {
  estado = "inicio";
  contadorTiempo = 0;
  contadorDeClics = 0;
  relleno = color( 255 );  
}