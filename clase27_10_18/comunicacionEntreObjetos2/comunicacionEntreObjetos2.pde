// COMUNICACION ENTRE OBJETOS 
// METODOS
App app;
void setup() {
  size(480, 360);
  app = new App();
}
void draw() {
  app.dibujar();
}

void mousePressed() {
  app.pressed();
}
void mouseMoved() {
  app.moved();
}
