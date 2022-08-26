
class MarioBros {

  // PROPIEDADES / CAMPOS = variables
  String estado;  //pequeno, mediano o grande
  //PImage[] pequeno;  //arreglo de imagenes para cada estado
  //PImage[] mediano;
  //PImage[] grande;
  PImage[] m = new PImage[3];
  int vidas;  // 0, 1, 2 o 3
  float x, y;
  color relleno;
  int c;

  // CONSTRUCTOR: el setup de la clase. Es un METODO que se ejecuta al INSTANCIAR una clase, es decir, armar un objeto a partir de la misma.
  // no tiene tipo de dato, y debe denominarse al igual que la clase
  MarioBros( float x_, float y_ ) {
    //PROPIEDADES seteadas igual en TODAS las instancias de mi clase
    estado = "pequeno";
    //faltaria cargar los arreglos de imagenes
    vidas = 3;
    relleno = color( random(255), random(255), random(255) );

    //PROPIEDADES seteadas por parametros del constructor
    x = x_;
    y = y_;

    //CARGO las imagenes en mi arreglo
    for ( int i = 0; i < 3; i++ ) {
      m[i] = loadImage( "mb0" + i + ".png" );  //concatenacion de texto
    }
    //contador para recorrer mi arreglo de imagenes
    c = 0;
  }
  MarioBros( float x_, float y_, float f_ ) {
    //PROPIEDADES seteadas igual en TODAS las instancias de mi clase
    estado = "pequeno";
    //faltaria cargar los arreglos de imagenes
    vidas = 3;
    relleno = color( random(255), random(255), random(255) );

    //PROPIEDADES seteadas por parametros del constructor
    x = x_;
    y = y_;

    //CARGO las imagenes en mi arreglo
    for ( int i = 0; i < 3; i++ ) {
      m[i] = loadImage( "mb0" + i + ".png" );  //concatenacion de texto
      
      //posibilidad de cambiar el tamaño proporcional al tamanio original
      m[i].resize( int(m[i].width*f_), int(m[i].height*f_) );
    }
    //contador para recorrer mi arreglo de imagenes
    c = 0;
  }

  // METODOS / ACCIONES = funciones

  //funcion para dibujar mi mario en pantalla
  void draw() {  //podria ser dibujar()
    //aca dibujaría con imagenes
    //pushStyle();
    //rectMode( CENTER );
    //fill( relleno );
    //rect( x, y, 50, 50 );
    //popStyle();
    
    //visualizamos con arreglo de imagenes
    //image( m[c], x, y );
    image( m[c], x, y );
  }

  //caminar - incluye retroceder
  void caminar( int k ) {  // 0 izquierda, 1 derecha
    if ( k == 1 ) {
      //derecha
      x += 10;
    } else if ( k == 0 ) {
      //izquierda
      x -= 10;
    }
  }
  
  void caminarIzquierda(){
    x -= 10;
    c--;
    //me aseguro que c valga: 2, 1, 0
    if( c == -1 )
      c = 2;
  }
  void caminarDerecha(){
    x += 10;
    c++;
    //me aseguro que c valga: 0, 1, 2
    if( c == 3 )
      c = 0;
  }

  //saltar
  void saltar( int k ) {
  }

  //agachar - condicion: ( estado == "mediano" || estado == "grande" )
  //disparar - condicion: ( estado == "grande" )
  //etc  

  //funcion que devuelve cuantas vidas tiene mario actualmente
  int getVidas() {  
    return vidas;
  }
  //funcion que me permite escribir el valor de la variable vidas
  void setVidas( int v ) {
    vidas = v;
  }
}
