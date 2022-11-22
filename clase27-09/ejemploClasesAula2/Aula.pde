class Aula {
  /////
  float tamanioX;
  
  //delcaro las instancias de mis clases (objetos)
  Profesor profe1, profe2;
  Estudiante estudiante1, estudiante2, estudiante3;
  
  //////

  Aula () {
    
    //inicializo los objetos, es decir, llamo a los constructores
    profe1 = new Profesor( 100, 100, 40 );
    profe2 = new Profesor( 300, 100, 40 );
    estudiante1 = new Estudiante();
    estudiante2 = new Estudiante();
    estudiante3 = new Estudiante();
    
  }
  
  void actualizar(){
    estudiante1.actualizar();
    estudiante1.moverConDrag();
    //
    estudiante2.actualizar();
    estudiante2.moverConDrag();
    //
    estudiante3.actualizar();
    estudiante3.moverConDrag();
  }
  
  void dibujar(){
    background( 100 );
    profe1.dibujar();
    profe2.dibujar();
    estudiante1.dibujar();
    estudiante2.dibujar();
    estudiante3.dibujar();
  }
  
  void eventosDeTeclado(){
    //aqui llamo a los metodos a ejecutarse con el teclado de mis objetos
  }
}
