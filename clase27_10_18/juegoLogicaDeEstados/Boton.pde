class BotonDeJuego {
  color colorDeFondo, colorDeTexto, colorDeLinea;
  int textSize, x, y, tamX, tamY, settedIDNumber;
  boolean hover;
  String tipo;
  Game game;
  BotonDeJuego(Game game, int x, int y, int tamX, int tamY, String tipo, int textSize) {
    this.game = game;
    this.x = x;
    this.y = y;
    this.tamX = tamX;
    this.tamY = tamY;
    this.textSize = textSize;
    this.tipo = tipo;
  }

  void actualizar() {

    if (mouseX > this.x && mouseY > this.y &&
      mouseX < this.x + this.tamX && mouseY < this.y + this.tamY) {
      this.hover = true;
    } else {
      this.hover = false;
    }

    if (this.hover && mousePressed) {
      if (this.tipo.equals("Jugar") && this.game.estadoID == 0) {
        this.game.estadoID = 1;
      }     
      if (this.tipo.equals("Reiniciar")  && this.game.estadoID == 2) {
        this.game.estadoID = 0;
        this.game.pantalla.personaje.vida = 100;
        this.game.pantalla.hits = 0;
       
      }
      if (this.tipo.equals("Creditos")  && this.game.estadoID == 2) {
        this.game.estadoID = 2;
      }
    }
  }
  int setterID () {
    return this.settedIDNumber;
  }

  void dibujar(String tipo) {
    if (this.hover) {

      this.colorDeLinea = color(255);
      this.colorDeTexto = color(255);
    } else {
      this.colorDeTexto = color(127);
      this.colorDeLinea = color(0);
    }

    if (tipo.equals("Jugar")) {
      push();
      fill(this.colorDeFondo);
      stroke(this.colorDeLinea);
      rect(this.x, this.y, this.tamX, this.tamY);
      fill(this.colorDeTexto);
      text("Jugar", this.x + this.textSize - this.textSize/2, this.y + (this.textSize/1.1));
      pop();
    } 

    if (tipo.equals("Reiniciar")) {
      push();
      fill(this.colorDeFondo);
      stroke(this.colorDeLinea);
      rect(this.x, this.y, this.tamX, this.tamY);
      fill(this.colorDeTexto);
      text("Reiniciar", this.x + this.textSize - this.textSize/2, this.y + (this.textSize/1.1));
      pop();
    }
  }
}
