
// mi primera clase (?)

// 1) declaración de la instancia de la clase a.k.a. objeto
// NombreClase nombreObjeto;
MarioBros mb;

void setup(){
  size( 400, 400 );
  
  // 2) inicialización del objeto a.k.a. llamar al método contructor
  // nombreObjeto = new NombreClase( param1, param2 );
  mb = new MarioBros( width/2, height/4*3 );
}

void draw(){
  background( 100 );
  
  // 3) ejecuto los metodos/funciones de mi objeto
  // nombreObjeto.nombreDelMetodo();
  mb.draw();
}

void keyPressed(){
  if( keyCode == LEFT )
    mb.caminar( 0 );
  if( keyCode == RIGHT )
    mb.caminar( 1 );
}
