/* 
  ANIMACION DE NOMBRE PROPIO
  - utilizar al menos 3 variables
  - hacer uso de text() y figuras primitivas
  - animar: posición, tamaño, color
  
*/

//1) declaración
String n = "Juan";
int t;  
float posX, vel;  //declaracion de 2 variables en misma linea

void setup(){
  size(400, 400 );
  textAlign(CENTER, CENTER );
  
  //2) asignación
  n = "Matias";
  println( n );
  
  t = int( random( 30, 70 ) );
  println( t );
  
  posX = 0;
  vel = 5;
  
  frameRate( 10 );
}

void draw(){
  //background( 0 );
  fill( 0, 10 );
  noStroke();
  rect( 0, 0, width, height );
  
  //3) utilización
  textSize( t );
  text(n, width/2, height/2 );
  fill( 255 );
  //text(n, frameCount, height/2 );
  
  //con variable declarada x el programador
  //posX = posX + vel;
  //formas resumidas de INCREMENTACIÓN
  //posX++;  //incrementa de a 1
  posX += vel; //incremente de a [vel]
  text(n, posX, height/2 );
  
  float x = random( width );
  float y = random( height );
  text("JL", x, y );

  //cursor con circulito
  noFill();
  stroke( 255, 0, 0 );
  circle(mouseX, mouseY, 100 );

}
