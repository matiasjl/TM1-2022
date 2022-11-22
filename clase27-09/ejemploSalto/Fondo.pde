class Fondo {
  color colorDeFondo = color(0);
  Figura figura;
  Obstaculo obstaculo;

  Fondo() {
    figura = new Figura(10);
    obstaculo = new Obstaculo(5);
  }

  void actualizar() {

    figura.actualizar();
    obstaculo.actualizar();

    this.colisiones();
  }

  void dibujar() {
    push();
    background(this.colorDeFondo);
    figura.dibujar();
    obstaculo.dibujar();
    pop();
  }

  void colisiones() {
    println(obstaculo.posicionY);
    println(figura.posicionY);

    if (obstaculo.posicionX - obstaculo.radio <  figura.posicionX + figura.tamanioX
      && obstaculo.posicionX + obstaculo.radio > figura.posicionX
      &&  figura.posicionY + figura.tamanioY > obstaculo.posicionY) {

      this.colorDeFondo = color(255, 0, 0);
    } else {

      this.colorDeFondo = color(0);
    }
  }
  void teclas() {

    figura.teclas();
  }
}
