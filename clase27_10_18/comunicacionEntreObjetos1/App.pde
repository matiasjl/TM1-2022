class App {
  int estadoID;
  /* */
  Pantalla pantalla;
  Boton botonPrincipal, botonVolver;
  App() {
    /* */
    this.botonPrincipal = new Boton(this, width/2, height/2, width/10, "Principal");
    this.botonVolver = new Boton(this, width - width/10, height - height/10, width/10, "Volver");

    this.pantalla = new Pantalla(this.botonPrincipal,  this.botonVolver);
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
}
