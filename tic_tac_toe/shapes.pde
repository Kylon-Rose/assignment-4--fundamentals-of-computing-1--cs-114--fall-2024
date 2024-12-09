void createBoard() {
  background(255);
  stroke(0);
  strokeWeight(2);
  
  for (int line = 1; line < Board_Size; line++) {
    line(line * Cell_Size, 0, line * Cell_Size, height); //Vertical Grid Lines
    line (0, line * Cell_Size, width, line * Cell_Size); //Horizontal Grid Lines
  }
}

void createShapes() {
  for (int row = 0; row < Board_Size; row++) {
    for (int column = 0; column < Board_Size; column++) {
      int player = board[row][column];
      if (player == Computer) {
        drawX(row, column);
      } else if (player == User) {
        drawO(row, column);
      }
    }
  }
}

