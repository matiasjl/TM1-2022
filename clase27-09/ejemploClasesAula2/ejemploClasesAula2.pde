//Aula aula, aula201, aula202;
Aula aula201;
//Profesor p1;
//Estudiante e1, e2;

void setup() {
  //////////////
  aula201 = new Aula();
  /////////////
  size(400, 600);
}

void draw() {
  aula201.actualizar();
  aula201.dibujar();

  //estudiante2.dibujar();

}

void keyPressed(){
  aula201.eventosDeTeclado();
}
