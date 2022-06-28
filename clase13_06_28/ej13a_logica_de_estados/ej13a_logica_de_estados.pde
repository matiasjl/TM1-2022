
//logica de estados

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
    text( "presione la barra espaciadora para continuar", width/2, height/2+50 ); 
    //
  }else if( estado.equals("instrucciones") ){
    background( 200, 100, 0 );
    text( estado, width/2, height/2 );  
    //
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