class Enemigo {
  float x, y, tamX, tamY;

  Enemigo() {
    this.tamY = height/10;
    this.tamX = width/10;
    this.x = random(0, width);
    this.y = random(-height, -10);
  }
  void reiniciar() {
    this.tamY = height/10;
    this.tamX = width/10;
    this.x = random(0, width);
    this.y = random(-height, -10);
  }
  void actualizar() {
    this.y++;
    this.x = this.x+(random(-10, 10));
    if (this.y > height) {
      this.y = 0;
    }
    if (this.x <= 10) {
      this.x = 11;
    } else if (this.x >= width-10) {
      this.x = width-11;
    }
  }
  void dibujar() {
    this.actualizar();
    push();
    rect(this.x, this.y, this.tamX, this.tamY);
    pop();
  }
}
