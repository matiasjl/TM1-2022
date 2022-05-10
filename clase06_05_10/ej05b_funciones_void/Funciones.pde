
void texto( String s, int t, float x, float y ){
  textSize( t );
  text( s, x, y );
}

// -------------------------------------------------------

void ojoProfeConParam( int t ){  //t = variable local a.k.a. parametro
  fill (255);
  ellipse(width/2, height/2, t*2, t);

  fill (0, 255, 0);
  circle (width/2, height/2, t/4*3);

  fill(0);
  circle (width/2, height/2, t/2);
}

// -------------------------------------------------------

int tamanio = 500;  //variable GLOBAL (practica no recomendada)

void ojoProfeConVariable(){  
  fill (255);
  ellipse(width/2, height/2, tamanio*2, tamanio);

  fill (0, 255, 0);
  circle (width/2, height/2, tamanio/4*3);

  fill(0);
  circle (width/2, height/2, tamanio/2);
}

// -------------------------------------------------------

// declarando mi propia funcion
void ojoValen() {
  fill (255);
  ellipse(300, 300, 400, 200);

  fill (0, 255, 0);
  circle (300, 300, 150);

  fill(0);
  circle (300, 300, 100);
}

// -------------------------------------------------------

void ojoAlexis() {
  fill (255);
  ellipse(width/2, height/2, 400, 200);

  fill (0, 255, 0);
  circle (width/2, height/2, 150);

  fill(0);
  circle (width/2, height/2, 100);
}
