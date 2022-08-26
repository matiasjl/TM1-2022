
// mi primera clase (?)

// 1) declaración de la instancia de la clase a.k.a. objeto
// NombreClase nombreObjeto;
MarioBros mb;
MarioBros luigi;

//Profesor Tobias;
//Profesor Matias;

void setup() {
  size( 800, 600 );
  imageMode( CENTER );

  // 2) inicialización del objeto a.k.a. llamar al método contructor
  // nombreObjeto = new NombreClase( param1, param2 );
  mb = new MarioBros( width/2, height/4*3 );
  luigi = new MarioBros( width/2, height/4, 0.6 );
}

void draw() {
  background( 255 );

  // 3) ejecuto los metodos/funciones de mi objeto
  // nombreObjeto.nombreDelMetodo();
  mb.draw();  //sin parametros
  luigi.draw( frameCount%360 );  //con UN parametro int
}

void keyPressed() {
  //objeto mb
  if ( keyCode == LEFT )
    mb.caminarIzquierda();
  if ( keyCode == RIGHT )
    mb.caminarDerecha();

  //objeto otro
  if ( key == 'a' )
    luigi.caminarIzquierda();
  if ( key == 'd' )
    luigi.caminarDerecha();
}
