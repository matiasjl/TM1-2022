
void reciclar( int _i ) {
  p[_i][0] = random( -400, -t );  //le asigno una nueva posicion inicial
  v[_i] = random( 1, 3 );  //le asigno una nueva velocidad
  co[_i] = round( random( 255 ) );  //color gris aleatorio
}

void reciclarTodos() {
  for ( int i = 0; i < c; i++ ) {
    v[i] = random( 1, 3 );  //aca setear la velocidad
    co[i] = round( random( 255 ) );  //color gris aleatorio
    p[i][0] = random( -400, -t );  //posX
    //reciclar( i );
  }
}

void reciclarArray( float[] a, int rMin, int rMax, boolean redon ) {
  for ( int i = 0; i < a.length; i ++ ) {
    if ( redon ) {
      a[i] = round( random( rMin, rMax ) );
    } else {
      a[i] = random( rMin, rMax );
    }
  }
}
void reciclarArray( int[] a, int rMin, int rMax, boolean redon ) {
  for ( int i = 0; i < a.length; i ++ ) {
    if ( redon ) {
      a[i] = round( random( rMin, rMax ) );
    } else {
      //a[i] = random( rMin, rMax );  //en caso de arreglo tipp int no puedo randomizar
    }
  }
}

void personaje() {  //podria pasarle parametros para setearlo
  pushStyle();
  fill( 0, 200, 0 );
  circle( mouseX, mouseY, t );
  popStyle();
}

void colision( float[][] posE, float posPX, float posPY, int r ) {
  for ( int i = 0; i < 10; i++ ) {  
    if ( dist( posE[i][0] + r, posE[i][1] + r, posPX, posPY ) < r ) {
      background( 200, 0, 0 );  //funciona correctamente si ejecuto esta funcion en el draw()
    }
  }
}
