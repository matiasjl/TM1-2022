
// tabla y zonas

int cant = 8;  //cantidad de celdas
int tam;

void setup(){
  size( 600, 600 );
  tam = width / cant;  //=100
}

void draw(){
  background( 0 );
  
  for( int x = 0 ; x < cant ; x++ ){
    for( int y = 0 ; y < cant ; y++ ){
      boolean estoyDentro = mouseX > x*tam && mouseX < x*tam+tam && mouseY > y*tam && mouseY < y*tam+tam ;
      if( estoyDentro ){
        fill( 0 );
      }else{
        fill( 255 );
      }
      rect( x * tam, y * tam, tam, tam );
    }
  }
}

void keyPressed(){
  if( key == '+' ){
    cant++;
    tam = width / cant;
  }
}
