class Game {
  int level;
  int estadoID;
  String estado;

  PantallaDeJuego pantalla;
  BotonDeJuego botonJugar, botonCreditos, botonReiniciar;
  Game(int level) {
    this.botonJugar = new BotonDeJuego(this, width/2, height/2, width/5, height/10, "Jugar", 24);
    this.botonReiniciar = new BotonDeJuego(this, width/4, height/2, width/5, height/10, "Reiniciar", 24);
    this.botonCreditos = new BotonDeJuego(this, width-width/4, height/2, width/5, height/10, "Creditos", 24);

    this.estado = "Inicio";
    this.estadoID = 0;
    this.pantalla = new PantallaDeJuego(this, level, this.botonJugar, this.botonReiniciar, this.botonCreditos);
    this.level = level;
  }
  void reiniciar() {
    for (int e = 0; e < 40; e++) {
      this.pantalla.enemigo[e].reiniciar();
    }
    cursor();
    this.pantalla.personaje = new Personaje();
  }
  void actualizar() {

    this.pantalla.actualizar(this.estadoID);
  }
  void pressed() {
    pantalla.pressed();
  }
  void moved() {
    pantalla.moved();
  }
  void dibujar() {
    if (this.estadoID  == 0 && this.level == 0) {
      this.pantalla.dibujar(this.estadoID);
    } else if (this.estadoID  == 1 && this.level == 0) {

      this.pantalla.dibujar(this.estadoID);
    } else if (this.estadoID  == 2 && this.level == 0) {

      this.pantalla.dibujar(this.estadoID);
    }
  }

  void keyPressed() {
    this.pantalla.keyPressed();
  }
  void keyReleased() {
    this.pantalla.keyReleased();
  }
}
