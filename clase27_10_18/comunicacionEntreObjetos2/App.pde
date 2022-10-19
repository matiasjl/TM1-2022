class App {
  int estadoID;
  /* */
  Pantalla pantalla;
  Boton botonPrincipal, botonVolver;
  Circulo [] circulo;
  App() {
    /* */
    this.botonPrincipal = new Boton(this, width/2, height/2, width/10, "Principal");
    this.botonVolver = new Boton(this, width - width/10, height - height/10, width/10, "Volver");
    this.circulo = new Circulo[30];
    this.construirCirculos();
    this.pantalla = new Pantalla(this.botonPrincipal, this.botonVolver, this.circulo);
    this.estadoID = 0;
  }
  void pressed() {
    this.pantalla.pressed();
  }
  void dibujar() {
    /* */
    this.pantalla.dibujar(this.estadoID);
  }

  void moved() {
    this.pantalla.moved();
  }

  void construirCirculos() {
    for (int i = 0; i < 30; i++) {

      this.circulo[i] = new Circulo(int(random(10, 30)));
    }
  }
}
