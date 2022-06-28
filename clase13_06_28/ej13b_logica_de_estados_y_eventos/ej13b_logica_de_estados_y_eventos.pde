
//logica de estados + eventos

String estado;

void setup(){
  size(500, 500 );
  textSize( 24 );
  textAlign( CENTER, CENTER );
  
  estado = "inicio";
}

void draw(){
  //logica de estados y eventos
  
  //if( estado == "inicio" ){
  if( estado.equals("inicio") ){
    background( 200, 0, 0 );
    text( estado, width/2, height/2 );
    text( "presione la barra espaciadora\n para continuar", width/2, height/2+100 ); 
    //
  }else if( estado.equals("instrucciones") ){
    background( 200, 100, 0 );
    text( estado, width/2, height/2 );  
    //
    //boton con mouse over
    pushStyle();
    if( dist( mouseX, mouseY, width/2, height/2+100) <= 25 ){
      fill( 200, 0, 0 );
    }else{
      fill( 0 );
    }
    ellipse( width/2, height/2+100, 50, 50 );
    popStyle();
    //
  }else if( estado.equals("jugando") ){
    background( 100, 0, 200 );
    text( estado, width/2, height/2 );    
    //
  }else if( estado.equals("ganar") ){
    background( 200, 200, 0 );
    text( estado, width/2, height/2 );  
    //
  }else if( estado.equals("perder") ){
    background( 200, 0, 200 );
    text( estado, width/2, height/2 );
    //
  }
}

void keyPressed(){
  //evento que cambia de inicio a instrucciones
  if( estado.equals("inicio") && key == ' ' ){
    estado = "instrucciones";
  }
}

void mousePressed(){
  //evento que cambia de instrucciones a jugando
  if( estado.equals("instrucciones") && dist( mouseX, mouseY, width/2, height/2+100) <= 25 ){
    estado = "jugando";
  }
}