
//LOGICA DE ESTADOS aplicada a los estados de un elemento texto

String contenido;
float tam, x, y ;

void setup(){
  size( 400, 400 );
  frameRate( 30 );
  textAlign( CENTER, TOP ); 
  //smooth();
  
  contenido = "TP1 Onfire";
  tam = 40;
  x = width / 2;
  y = height;
}

void draw(){
  println( frameCount, frameCount/30 );
  
  //fondo y lineas
  background( 0 );
  stroke( 255 );
  line( width/2, 0, width/2, height );
  line( 0, height/2, width, height/2 );
  
  //dibujo texto
  textSize( tam );
  text( contenido, x, y );

  //LOGICA DE ESTADOS ------------------------ SOLO MANIPULO LAS VARIABLES
  
  if( frameCount < 150 ){  //estado 1: texto subiendo
    y -= 1.4;
  }else if( frameCount > 150 && frameCount < 300 ){  //estado 2: texto frenado
    //y = algo
    //o nada... debido a que se queda quieto, literalmente.
  }else if( frameCount > 300 ){  //estado 3: texto achicandose
    //tam = tam - 1;
    tam = tam - 0.2;
  }
  
}
