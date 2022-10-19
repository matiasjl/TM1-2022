class Pantalla {
  Boton botonPrincipal, botonVolver;
  Circulo [] circulo;
  Pantalla(Boton botonPrincipal, Boton botonVolver, Circulo [] circulo) {
    this.botonPrincipal = botonPrincipal;
    this.botonVolver = botonVolver;

    this.circulo = circulo;
  }

  void dibujar(int estadoID) {
    if (estadoID == 0) {
      this.dibujarPantallaPrincipal();
    } else  if (estadoID == 1) {
      this.dibujarPantallaSiguiente();
    }
  }

  void dibujarPantallaPrincipal() {
    push();
    background(0);
    this.botonPrincipal.dibujar();
    pop();
  }
  void dibujarPantallaSiguiente() {
    push();
    background(127);
    this.botonVolver.dibujar();
    this.dibujarArregloDeObjetos();
    pop();
  }
  void dibujarArregloDeObjetos() {
    for (int i = 0; i < 30; i++) {
      //this.cuadrado[i].dibujar();
     
      println(this.circulo[i].y);
      println(this.circulo[i].x);

      this.circulo[i].dibujar();
    }
  }
  void moved() {
    this.botonPrincipal.moved();
    this.botonVolver.moved();
  }
  void pressed() {
    this.botonPrincipal.pressed();
    this.botonVolver.pressed();
  }
}
