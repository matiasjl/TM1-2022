
// ENTER THE VOID (movie) #recomendada

void setup(){
  size( 400, 400 );  //funcion que no devuelve valor
  noStroke();  //funcion que no devuelve valor SIN PARAMETROS
  frameRate( 30 );  //funcion que no devuelve valor
}

void draw(){
  float d = dist( mouseX, mouseY, width/2, height/2 );  //variable tipo float donde guardo el resultado de la funcion dist() funcion que devuelve valor 
  println( "distancia: " + d );
  background( d );  //funcion que no devuelve valor, con variable de usuario como parametro
  
  //float r = random(100);
  //println( r );
  println( "random: " + random(100) );  //funcion que no devuelve valor + una que si devuelve: random()
  
  fill( frameCount % 255 );  //funcion que no devuelve valor + variable del entorno: frameCount
  circle( height/2, width/2, frameCount % 255 );  //funcion que no devuelve valor + 3 variables del entorno como parametros  
  
}
