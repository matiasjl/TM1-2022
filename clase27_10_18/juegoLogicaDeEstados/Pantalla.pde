class PantallaDeJuego {
  PImage [] backgroundImage;
  int backgroundMax = 3;
  int level;
  int estadoID;
  int hits;
  BotonDeJuego botonJugar, botonReiniciar, botonCreditos;
  Personaje personaje;
  Enemigo [] enemigo;
  Disparo disparo;
  Game game;
  PantallaDeJuego(Game game, int level, BotonDeJuego botonJugar, BotonDeJuego botonReiniciar, BotonDeJuego botonCreditos) {
    this.hits = 0;
    this.game = game;
    this.enemigo = new Enemigo[40];
    for (int i = 0; i < 40; i++) {
      this.enemigo[i] = new Enemigo();
    }
    this.personaje = new Personaje();
    this.disparo = this.personaje.disparo;
    this.estadoID = 0;
    this.botonJugar = botonJugar;
    this.botonReiniciar = botonReiniciar;
    this.botonCreditos = botonCreditos;

    this.level = level;
    this.backgroundImage = new PImage[this.backgroundMax];
    for (int i =0; i < this.backgroundMax; i++) {
      this.backgroundImage[i] = loadImage("./background/"+ i + ".png");
      this.backgroundImage[i].resize(width, height);
    }
  }
  void actualizar(int estadoID) {

    this.estadoID = estadoID;

    this.calcularColisiones();
  }
  void calcularColisiones() {
    for (int e = 0; e < 40; e++) {
      for (int j = 0; j < this.disparo.particulasActivas; j++) {
        for (int i = 0; i < this.disparo.cantidadDeParticulas; i++) {
          if (
            //enemigo[e].x > this.disparo.partX[j][i] - this.disparo.diametro  &&
            //enemigo[e].x + enemigo[e].tamX < this.disparo.partX[j][i] + this.disparo.diametro &&
            this.disparo.partY[j][i] <  enemigo[e].y +  enemigo[e].tamY
            //  enemigo[e].y +  enemigo[e].tamY < this.disparo.partY[j][i] - this.disparo.diametro) {
            ) {
            if (this.disparo.particulasVivas[j][i] == true) {
              this.disparo.particulasVivas[j][i] = false;
              this.disparo.tiempoDeVida[j][i] = 0;
              enemigo[e].y = random(-height, -10);
              hits++;
            }
          }
          if (this.enemigo[e].x > this.personaje.x && this.enemigo[e].x < this.personaje.x + this.personaje.tam &&
            this.enemigo[e].y > this.personaje.y && this.enemigo[e].y < this.personaje.y + this.personaje.tam) {
            this.personaje.vida -=10;

            enemigo[e].y = random(-height, -10);

            if (this.personaje.vida <= 0) {
              this.game.estadoID = 2;
              this.game.reiniciar();
            }
          }
        }
      }
    }
  }







  void dibujar(int estadoID) {
    if (estadoID == 0 && this.level == 0) {
      this.dibujarPantalla();
    } else if (estadoID == 1) {
      this.dibujarPantallaJugar();
    } else if (estadoID == 2) {
      this.dibujarPantallaResultado();
    }
  }
  void dibujarPantallaJugar() {
    push();
    noCursor();
    image(this.backgroundImage[1], 0, 0);
    this.personaje.caminar();
    this.personaje.calcularCentroDelPersonaje();
    this.personaje.calcularAnguloDeMira();
    for (int i = 0; i < 40; i++) {
      enemigo[i].dibujar();
    }

    this.personaje.dibujarPersonaje();
    text(hits, width/2, height-height/10);
    pop();
  }
  void dibujarPantalla() {
    push();
    image(this.backgroundImage[0], 0, 0);
    this.botonJugar.dibujar("Jugar");
    pop();
  }
  void dibujarPantallaResultado() {
    push();
    image(this.backgroundImage[2], 0, 0);
    this.botonReiniciar.dibujar("Reiniciar");
    this.botonCreditos.dibujar("Creditos");


    pop();
  }

  void dibujarPantallaCreditos() {
  }
  void moved() {
    this.botonJugar.actualizar();
    this.botonReiniciar.actualizar();
  }
  void pressed() {
    this.botonJugar.actualizar();
    this.botonReiniciar.actualizar();

    this.personaje.mousePressed();
  }
  void keyPressed() {

    this.personaje.keyPressed();
  }
  void keyReleased() {
    this.personaje.keyReleased();
  }
}
