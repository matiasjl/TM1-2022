
// tabla y zonas CON arreglos bidimensionales

int cant = 8;  //cantidad de celdas
int tam;
boolean mostrarIndices = false;

//declaración y tamaño del arreglo
boolean[][] negro = new boolean[cant][cant];

void setup(){
  size( 600, 600 );
  textSize( 20 );
  textAlign( CENTER, CENTER );
  
  tam = width / cant;  //=100
  
  //asignacion
  for( int i = 0 ; i<cant ; i++){
    for( int j = 0 ; j<cant ; j++){
      negro[i][j] = false;
    }
  }
  negro[1][1] = true;  //asigno manualmente UNA posición de mi arreglo
  
}

void draw(){
  background( 0 );
  
  for( int x = 0 ; x < cant ; x++ ){
    for( int y = 0 ; y < cant ; y++ ){
      /*
      boolean estoyDentro = mouseX > x*tam && mouseX < x*tam+tam && mouseY > y*tam && mouseY < y*tam+tam ;
      */
      if( negro[x][y] == true ){
        fill( 0 );
      }else{
        fill( 255 );
      }
      rect( x * tam, y * tam, tam, tam );
      if( mostrarIndices ){
        fill( 100 );
        text( x + " / " + y, x * tam + 40, y * tam + 30);
      }
    }
  }
}

void mousePressed(){
  for( int i = 0 ; i<cant ; i++){
    for( int j = 0 ; j<cant ; j++){
      boolean estoyDentro = mouseX > i*tam && mouseX < i*tam+tam && mouseY > j*tam && mouseY < j*tam+tam ;      
      if( estoyDentro ){
        //negro[i][j] = true;
        negro[i][j] = !negro[i][j];  //me permite ir de blanco a negro y viceversa
      }
    }
  }
  
}

void keyPressed(){
  if( key == '+' ){
    cant++;
    tam = width / cant;
  }
  if( key == ' ' ){
    mostrarIndices = !mostrarIndices;
  }
  if( key == 's' || key == 'S' ){
    saveFrame();
    println( "Dibujo Guardado" );
  }    
}
