
//CON arreglos

Nieve n;

void setup(){
  fullScreen(1);
  
  n = new Nieve( 1000 );
  
}

void draw(){
  background( 0, 0, 200 );
  
  n.actualizar();
  n.dibujar();
}

void keyPressed(){
  n.agregarCopo();   //agrego un Copo a mi arraylist
}
