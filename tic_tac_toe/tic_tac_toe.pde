void setup() {
  size(500, 500);
  startGame();
}

void draw() {
  createBoard();
  createShapes();
}

void keyPressed() {
  UserInput(key);
}
