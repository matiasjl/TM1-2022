
// mi primera clase (?)

// 1) declaración de la instancia de la clase a.k.a. objeto
// NombreClase nombreObjeto;
MarioBros mb;
MarioBros otro;

void setup(){
  size( 400, 400 );
  
  // 2) inicialización del objeto a.k.a. llamar al método contructor
  // nombreObjeto = new NombreClase( param1, param2 );
  mb = new MarioBros( width/2, height/4*3 );
  otro = new MarioBros( width/2, height/2 );
}

void draw(){
  background( 100 );
  
  // 3) ejecuto los metodos/funciones de mi objeto
  // nombreObjeto.nombreDelMetodo();
  mb.draw();
  otro.draw();
}

void keyPressed(){
  //objeto mb
  if( keyCode == LEFT )
    mb.caminar( 0 );
  if( keyCode == RIGHT )
    mb.caminar( 1 );

  //objeto otro
  if( key == 'a' )
    otro.caminar( 0 );
  if( key == 'd' )
    otro.caminar( 1 );

}
