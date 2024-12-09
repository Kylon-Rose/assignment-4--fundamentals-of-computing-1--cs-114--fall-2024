int[][] board;
boolean gameEnds;
int currentPlayer;

void startGame() {
  board = new int[Board_Size][Board_Size];
  gameEnds = false;
  currentPlayer = Computer;
  
  ComputerMove();
}

