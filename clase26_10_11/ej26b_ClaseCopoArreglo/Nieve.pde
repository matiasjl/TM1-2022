
//esta clase va a contener el arreglo de objetos de Copos

class Nieve {
  
  int cantidad;
  
  //1 y 2: Declarar y crear el Array
  //int[] numeros = new int[cantidad];
  
  //1: Declarar el Array
  int[] numeros;
  Copo[] copos;

  Nieve( int c_ ){
    
    cantidad = c_;  //cantidad de copos
    
    //2: crear el Array (darle dimension / cantidad)
    numeros = new int[cantidad];
    copos = new Copo[cantidad];
    
    //3: darle valor inicial /o/ inicializar el objeto (llamar al constructor)
    for( int i = 0 ; i < numeros.length ; i++ ){  
      numeros[i] = int(random(100));
    }
    for( int i = 0 ; i < copos.length ; i++ ){
      copos[i] = new Copo();
    }
  
  }
  
  void actualizar(){
    for( int i = 0 ; i < copos.length ; i++ ){
      copos[i].actualizar();
    }    
  }
  
  void dibujar(){
    for( int i = 0 ; i < copos.length ; i++ ){
      copos[i].dibujar();
    }
  }

}
