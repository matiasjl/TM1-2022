
//esta clase va a contener el arreglo de objetos de Copos

class Nieve {
  
  int cantidad;
  
  //1. declaro mi arraylist
  //ArrayList<Ball> balls;
  ArrayList<Copo> copos;
  

  Nieve( int c_ ){
    
    cantidad = c_;  //cantidad de copos
    
    //2. creo mi arraylist vacio
    //balls = new ArrayList<Ball>();
    copos = new ArrayList<Copo>();
    
    //3. agrego un elemento
    //balls.add(new Ball(width/2, 0, ballWidth));
    for( int i = 0 ; i < cantidad ; i++ ){
      copos.add( new Copo() );
    }
  
  }
  
  void actualizar(){
    //for( int i = 0 ; i < copos.length ; i++ ){
      //copos[i].actualizar();
    //}    
    for( int i = copos.size()-1; i >= 0; i--) {
       Copo c = copos.get(i);
       c.actualizar();
    }

  }
  
  void dibujar(){
    //for( int i = 0 ; i < copos.length ; i++ ){
      //copos[i].dibujar();
    //}
    for( int i = copos.size()-1; i >= 0; i--) {
       Copo c = copos.get(i);
       c.dibujar();
    }
  }
  
  void agregarCopo(){
    copos.add( new Copo() );
  }

}
