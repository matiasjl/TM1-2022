
//CON arreglos

Nieve n;

void setup(){
  fullScreen(1);
  
  n = new Nieve( 100 );
  
}

void draw(){
  background( 0, 0, 200 );
  
  n.actualizar();
  n.dibujar();
}
