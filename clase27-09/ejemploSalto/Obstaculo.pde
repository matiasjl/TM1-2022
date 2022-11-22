class Obstaculo {
  float posicionX, posicionY, diametro;
  int velocidad;
  float radio;
  Obstaculo(int velocidad) {
    this.velocidad = velocidad;
    this.diametro = width/10;
    this.posicionX = height + this.diametro;
    this.posicionY = height - this.diametro;
    this.radio  = this.diametro/2;
  }


  void dibujar() {
    circle(this.posicionX, this.posicionY, this.diametro);
  }


  void reiniciarPosicionEnX() {
    this.posicionX =  height + diametro;
  }

  void actualizar() {
    this.posicionX -= this.velocidad;

    if (this.posicionX  <= 0 - diametro) {
      
      this.reiniciarPosicionEnX();
      
    }
  }
}
