
// Copo equivale a un solo punto/imagen en pantalla

class Copo {

  //CAMPOS (variables)
  float x, y;  //coordenadas
  float tamanio;
  float velocidad;
  PImage imagen;  //reemplaza al 'relleno'

  //CONSTRUCTOR (el "setup" de la clase, el primer método que se ejecuta)
  Copo( float x_, float y_, float t_ ) {
    x = x_;
    y = y_;
    tamanio = t_;  //lo defino mediante parámetro del constructor
    velocidad = random( 2, 5 );

    //imagenes y problemas je
    //1. carga mediante random
    imagen = loadImage("../data/snowflake-"+int(random(50))+".png");
    //2. cambiar el tamaño
    imagen.resize( int(tamanio), int(tamanio) );
    
  }

  //Métodos (funciones)
  void actualizar() {  //los calculos matemáticos de movimiento
    //y = y + velocidad;
    y += velocidad;
    reciclar();
  }

  void dibujar() {  //las funciones de dibujo en si
    //ellipse( x, y, tamanio, tamanio );
    image( imagen, x, y );
  }

  void reciclar() {
    if ( y > height+100 ) {
      x = random( width );
      y = -100;
      //tamanio = random( 10, 25 );
      velocidad = random( 2, 5 );
    }
  }
  
}
