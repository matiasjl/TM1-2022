int cant = 5000;
void setup() {
  size(600, 600);
  background(0);
}
void draw() {
  for (int i=0; i<cant; i++) {
    float diametro = random(20, 40);
    ellipse(random(width), random(height), diametro, diametro);
  }
}
