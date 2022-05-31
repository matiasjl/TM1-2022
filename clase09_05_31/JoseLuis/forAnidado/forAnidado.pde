int cant = 10;
int tam;
void setup() {
  size(600, 600);
  tam = width/cant;
}

void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float ancho = map(i+j, 0, cant+cant, tam/4, tam);
      ellipse(i*tam+tam/2, j*tam+tam/2, ancho, ancho);
    }
  }
}
