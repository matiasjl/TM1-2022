void setup() {
  size(600, 400);
}
void draw() {
  background(0);
  for (int i=0; i<width; i+=60) {
    rect(i, 0, 60, 60);
  }
}
