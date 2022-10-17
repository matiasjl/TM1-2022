
//SIN arreglos

Copo c1, c2, c3;

void setup(){
  fullScreen(1);
  
  c1 = new Copo( 100, -100, 30 );
  c2 = new Copo( 300, -100, 20 );
  c3 = new Copo( 500, -100, 50 );
}

void draw(){
  background( 0, 0, 200 );

  c1.actualizar();
  c2.actualizar();
  c3.actualizar();
  //
  c1.dibujar();
  c2.dibujar();
  c3.dibujar();
}
