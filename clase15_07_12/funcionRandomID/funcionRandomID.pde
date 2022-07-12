
void setup() {
  println( randomID( 0, 10 ) );
  println( random( 0, 10 ) );
  
  //miarrgleglo[ randomID( 0, 10 ) ];
}

int randomID( int min, int max ) {
  float aux = random( min, max );
  int resultado = round(aux);  // int(aux);

  return resultado;
}
