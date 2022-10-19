class Personaje {
  PImage personajeImage;
  float centro[], angulo, longitud, coordX, coordY;
  boolean asciende, desciende, izquierda, derecha;
  int x, y, tam, vel, vida;
  int count = 0;
  Disparo disparo;

  Personaje() {
    this.vida = 100;
    this.disparo = new Disparo();
    this.personajeImage = loadImage("./rabbit.png");
    this.tam = width/8;
    this.vel = 2;
    this.x = width/2;
    this.y = height/2;
    this.centro = new float[2];
  }

  void mira() {
    this.count++;
    pushStyle();
    line(this.centro[0], this.centro[1], mouseX, mouseY);
    noFill();
    circle(mouseX, mouseY, this.tam);
    popStyle();
  }
  void calcularCentroDelPersonaje() {
    this.centro[0] = this.x;
    this.centro[1] = this.y;
  }


  void dibujarPersonaje() {
    this.disparo.viviendo();
    image(this.personajeImage, this.x, this.y, this.tam, this.tam);
    this.mira();
    this.dibujarVida();
  }

  void dibujarVida() {
    fill(0);
    rect(0, 0, width, height/20);
    fill(255, 0, 0);
    rect(0, 0, map(vida, 0, 100, 0, width), height/20);
    fill(255, 255, 0);
    text("VIDA: " + vida + "%", height/20, height/25);
  }
  void caminar() {

    if (this.asciende == true) {
      this.y -=1 * this.vel;

      if (this.izquierda == true) {
        this.x -=1 * this.vel;
      }
      if (this.derecha == true) {
        this.x +=1 * this.vel;
      }
    }
    if (this.desciende == true) {
      this.y +=1 * this.vel;
      if (this.izquierda == true) {
        this.x -=1 * this.vel;
      }
      if (this.derecha == true) {
        this.x += 1 * this.vel;
      }
    }

    if (this.izquierda == true) {
      this.x -=1 * this.vel;
    }
    if (derecha == true) {
      this.x += 1 * this.vel;
    }
  }
  void calcularAnguloDeMira() {
    this.angulo = map(atan2(mouseY-this.y, mouseX-this.x), -PI, PI, 0, 360);
    this.longitud = int(dist(this.x, this.y, mouseX, mouseY));
  }
  void mousePressed() {
    this.disparar();
  }
  void keyPressed() {

    if (key == 'W' || key == 'w') {
      this.asciende = true;
    }
    if (key == 'S'  || key == 's') {

      this.desciende = true;
    }
    if (key == 'A' || key == 'a') {
      this.izquierda = true;
    }
    if (key == 'D' || key == 'd') {
      this.derecha = true;
    }
  }
  void keyReleased() {

    if (key == 'W' || key == 'w') {
      this.asciende = false;
    }

    if (key == 'S'  || key == 's') {

      this.desciende = false;
    }

    if (key == 'A' || key == 'a') {

      this.izquierda = false;
    }

    if (key == 'D' || key == 'd') {

      this.derecha = false;
    }
  }
  void disparar() {
    if (this.count > 5) {
      this.disparo.nacer(this.x, this.y, this.angulo);
    }
  }
}
