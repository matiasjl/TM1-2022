Game game;
void setup() {
  size(displayWidth, displayHeight);
  game = new Game(0);
}
void draw() {
  game.actualizar();
  game.dibujar();
}

void mousePressed() {
  game.pressed();
}

void mouseMoved() {
  game.moved();
}

void keyPressed() {
  game.keyPressed();
}
void keyReleased() {
  game.keyReleased();
}
