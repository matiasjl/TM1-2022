int pos;
void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  //float relleno = mouseX*255/width; // con regla de tres
  float relleno = map(pos, 0, width, 0, 255); // con map()
  pos ++;
  fill(0, relleno, 0);
  rect(pos, 0, 100, 100);
}
