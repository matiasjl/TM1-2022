int cant = 11;
int tam;
void setup() {
  size(600, 600);
  tam = width/cant;
}

void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float distan = dist(mouseX, mouseY, i*tam+tam/2, j*tam+tam/2);
      float diagonal = dist(0, 0, width, height);
      float ancho = map(distan, 0, diagonal, tam/4, tam*2);
      float relleno = map(distan, 0, diagonal, 255, 20);
      fill(0, 255, 0, relleno);
      ellipse(i*tam+tam/2, j*tam+tam/2, ancho, ancho);
    }
  }
}
