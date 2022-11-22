Fondo fondo; //<-- Instacia de clase "Fondo", la llamamos "fondo"
void setup() {
  size(400, 400);
  fondo = new Fondo();
}

void draw() {
  fondo.actualizar();
  fondo.dibujar();
}

void keyPressed() {
  fondo.teclas();
}
