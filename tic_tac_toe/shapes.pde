void createBoard() {
  background(255);
  stroke(0);
  strokeWeight(2);
  
  for (int line = 1; line < Board_Size; line++) {
    line(line * Cell_Size, 0, line * Cell_Size, height); //Vertical Grid Lines
    line (0, line * Cell_Size, width, line * Cell_Size); //Horizontal Grid Lines
  }
}
