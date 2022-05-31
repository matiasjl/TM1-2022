void setup() {
  size(640, 480);
}
void draw() {
  background(255);
  for (int l=0; l<height; l++) {
    float tono = l*255/height;
    stroke(tono, 0, 0);
    line(0, l, width, l);
  }
}
