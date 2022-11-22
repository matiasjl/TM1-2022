class Figura {
  
  boolean saltando;
  boolean cayendo;
  float tamanioX, tamanioY, posicionX, posicionY;
  int altura = height/3;
  int piso = height;
  int velocidad;
  
  Figura(int velocidad) {

    posicionX = width/5;
    posicionY = height - height/5;
    tamanioX = width/5; 
    tamanioY = height/5;
    this.velocidad = velocidad;
  }
  void actualizar() {

    if (this.saltando == false) {
      this.cayendo = false;
    } else if (this.saltando == true 
      &&  this.posicionY > this.altura
      && this.cayendo == false) {
      this.posicionY-=this.velocidad;
    }
    if ( this.posicionY <= this.altura) {
      this.cayendo = true;
    }
    if (this.cayendo 
      && this.saltando 
      && this.posicionY < this.piso - this.tamanioY) {
      this.posicionY+=this.velocidad;
    } else  if (this.cayendo 
      && this.saltando 
      && this.posicionY >=  this.piso - this.tamanioY) {
      this.cayendo = false;
      this.saltando = false;
    }
  }
  void dibujar() {
    pushStyle();
    rect(this.posicionX, this.posicionY, this.tamanioX, this.tamanioY);
    popStyle();
  }
  
  void teclas() {
    if (this.saltando == false) {
      this.saltando = true;
    }
  }
}
