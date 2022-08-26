
class MarioBros {

  // PROPIEDADES / CAMPOS = variables
  String estado;  //pequeno, mediano o grande
  PImage[] pequeno;  //arreglo de imagenes para cada estado
  PImage[] mediano;
  PImage[] grande;
  int vidas;  // 0, 1, 2 o 3
  float x, y;
  color relleno;
  
  // CONSTRUCTOR: el setup de la clase. Es un METODO que se ejecuta al INSTANCIAR una clase, es decir, armar un objeto a partir de la misma.
  // no tiene tipo de dato, y debe denominarse al igual que la clase
  MarioBros( float x_ , float y_ ){
    //PROPIEDADES seteadas igual en TODAS las instancias de mi clase
    estado = "pequeno";
    //faltaria cargar los arreglos de imagenes
    vidas = 3;
    relleno = color( random(255), random(255), random(255) );
    
    //PROPIEDADES seteadas por parametros del constructor
    x = x_;
    y = y_;
  }

  // METODOS / ACCIONES = funciones
  
  //funcion para dibujar mi mario en pantalla
  void draw(){  //podria ser dibujar()
    //aca dibujaría con imagenes
    pushStyle();
    rectMode( CENTER );
    fill( relleno );
    rect( x, y, 50, 50 );
    popStyle();
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
  /*
  void caminarIzquierda(){
  }
  void caminarDerecha(){
  }
  */

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
