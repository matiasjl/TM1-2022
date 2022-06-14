
// https://processing.org/reference/map_.html

//variable que suma en uno para posicion X de la linea
int incremento = 0;
//escala origen: 0 - 800 (el ancho de la pantalla)
int escala1a = 0;
int escala1b = 800;
//escala destino: 0 - 255 (el abanico de colores
int escala2a = 0;
int escala2b = 255;

void setup(){
  size( 800, 400 );
  surface.setLocation(600,-800);
}

void draw(){
  
  //realizo mi mapeo
  //map( valor, escala1a, escala1b, escala2a, escala2b );
  //float colorcito = map( incremento, 0, 800, 0, 255 );
  float colorcito = map( incremento, escala1a, escala1b, escala2a, escala2b );
  
  //LINEAS
  stroke( colorcito, 0, 0 );
  line( incremento, 0, incremento, height );
  
  //CIRCULO
  //fill( colorcito, 0, 0 );
  //noStroke();
  //circle( width/2, height/2, 800-incremento );
  
  //actualizo variables
  incremento++;
  
  //degradez fijo utilizando for, de tamaño ancho del mouse
  //degradezConLineas(mouseX);
  
}

void degradezConLineas(){
  for( int i = 0 ; i < 800 ; i++ ){
    float colorcito = map( i, escala1a, escala1b, escala2a, escala2b );
    stroke( colorcito, 0, 0 );
    line( i, 0, i, height );
  }
}
void degradezConLineas( int ancho ){
  for( int i = 0 ; i < ancho ; i++ ){
    float colorcito = map( i, escala1a, ancho, escala2a, escala2b );
    stroke( colorcito, 0, 0 );
    line( i, 0, i, height );
  }
}
