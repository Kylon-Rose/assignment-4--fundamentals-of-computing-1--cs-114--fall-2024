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

void drawX(int row, int column) {
  int beginX = column * Cell_Size;
  int beginY = row * Cell_Size;
  stroke(255, 0, 0);
  strokeWeight(3);
  //Draws X
  line(beginX + 10, beginY + 10, beginX + Cell_Size - 10, beginY + Cell_Size - 10);
  line(beginX + Cell_Size - 10, beginY + 10, beginX + 10, beginY + Cell_Size - 10);
}

void drawO(int row, int column) {
  int centerX = column * Cell_Size + Cell_Size / 2; //center x-coordinate
  int centerY = row * Cell_Size + Cell_Size / 2; //center y-coordinate
  stroke(0, 0, 255);
  strokeWeight(3);
  noFill();
  
  ellipse(centerX, centerY, Cell_Size - 20, Cell_Size - 20);
}
  


  
    
