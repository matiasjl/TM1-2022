int cant =10;
int ancho;
void setup() {
  size(600, 400);
  ancho = width/cant;
}
void draw() {
  background(0);
  for (int i=0; i<mouseX; i+=60) {
    fill(0, 255, 0);
    rect(i, 0, ancho, ancho);
  }
  for (int i=0; i<cant; i++) {
    if (i%2==0) {
      fill(255, 0, 0);
    } else {
      fill(200);
    }

    rect(i*ancho, 200, ancho, ancho);
  }
}
void mousePressed() {
  if (cant>1) {
    cant--;
  }
}
void keyPressed() {
  cant = 10;
  ancho = width/cant;
}
