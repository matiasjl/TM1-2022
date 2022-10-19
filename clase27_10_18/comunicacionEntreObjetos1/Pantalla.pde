class Pantalla {
  Boton botonPrincipal, botonVolver;
  Pantalla(Boton botonPrincipal, Boton botonVolver) {
    this.botonPrincipal = botonPrincipal;
    this.botonVolver = botonVolver;
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

    pop();
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
