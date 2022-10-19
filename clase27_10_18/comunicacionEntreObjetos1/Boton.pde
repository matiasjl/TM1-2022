class Boton {
  int x, y, tam;
  String tipo;
  color colorDeFondo, colorDeLinea, colorDeTexto;
  boolean deteccion;
  App app;
  Boton(App app, int x, int y, int tam, String tipo) {

    this.app = app;
    this.tipo = tipo;
    this.x = x;
    this.y = y;
    this.tam = tam;
  }

  void dibujar() {
    if (this.tipo.equals("Principal")) {
      push();
      fill(this.colorDeFondo);
      rect(this.x, this.y, this.tam, this.tam);
      fill(this.colorDeTexto);
      text("Iniciar", this.x + this.tam/10, this.y + this.tam/2);
      pop();
    } 

    if (this.tipo.equals("Volver")) {
      push();
      fill(this.colorDeFondo);
      rect(this.x, this.y, this.tam, this.tam);
      fill(this.colorDeTexto);
      text("Volver", this.x + this.tam/10, this.y + this.tam/2);
      pop();
    }
  }
  void moved() {
    if (mouseX > this.x && mouseX < this.x + this.tam &&
      mouseY > this.y && mouseY <  this.y + this.tam) {
      this.deteccion = true;
    } else {
      this.deteccion = false;
    }
    this.deteccion();
  }
  void deteccion() {
    if (this.deteccion) {
      this.colorDeFondo = color(0, 255, 0, 127);
      this.colorDeLinea = color(255);
      this.colorDeTexto = color(0);
    } else {
      this.colorDeFondo = color(255);
      this.colorDeLinea = color(255);
      this.colorDeTexto = color(0);
    }
  }
  void pressed() {
    if (mousePressed && this.deteccion &&
      this.app.estadoID == 0 && this.tipo.equals("Principal")) {
      this.app.estadoID = 1;
    } else if (mousePressed && this.deteccion &&
      this.app.estadoID == 1 && this.tipo.equals("Volver")) {
      this.app.estadoID = 0;
    }
  }
}
