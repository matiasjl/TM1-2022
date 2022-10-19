class Circulo {
  float x, y, tam;
  color colorDeFondo;
  Circulo(float tam) {
    this.x = random(0, width);
    this.y = -(random(0, height));
    this.tam = tam;
    this.colorDeFondo = color(255);
  }
  void comportamiento() {
    this.y++;
  }
  void actualizar() {
    this.comportamiento();
    if (this.y > height) {
      this.x =  random(0, width);
      this.y = -(random(0, height));
    }
  }
  void dibujar() {
    this.actualizar();
    this.moved();
    push();
    fill(this.colorDeFondo);
    circle(this.x, this.y, this.tam);
    pop();
  }

  void moved() {
    if (dist(this.x, this.y, mouseX, mouseY) <  this.tam) {

      this.colorDeFondo = color(0);
    } else {
      this.colorDeFondo = color(255);
    }
  }
}
