void setup() {
  size(640, 480);
}
void draw() {
  background(255);  
  // degradee(0, 0, 100, height);
  // degradee(150, 100, 100, height);

  for (int i=0; i<6; i++) {
    degradee(i*width/5, 0, width/6, height);
  }
}
void degradee(int lx, int ly, int ancho, int alto) {
  for (int l=ly; l<ly+alto; l++) { // ajustamos el límite inferior
    float tono = l*255/alto;
    stroke(tono, 0, 0);
    line(lx, l, lx+ancho, l);
  }
}
