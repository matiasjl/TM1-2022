int tam;
boolean creciendo;
void setup() {
  size(400, 400);
}

void draw() {
  animacion();
}
void animacion() {
  if (creciendo) {
    tam++;
  } else {
    tam--;
  }

  if (tam > 150) {
    creciendo = false;
  } 
  if (tam < 1) {
    creciendo = true;
  }
  circle(width/2, height/2, tam);
}
