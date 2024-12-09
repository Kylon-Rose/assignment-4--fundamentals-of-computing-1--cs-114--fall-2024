int[][] board;
boolean gameEnds;
int currentPlayer;

void startGame() {
  board = new int[Board_Size][Board_Size];
  gameEnds = false;
  currentPlayer = Computer;
  
  ComputerMove();
}

void UserInput(char key) {
  if (gameEnds) {
    println("The game has ended.");
    return;
  }
  
  if (key >= '0' && key <= '8') {
    int position = key - '0';
    int row = position / Board_Size;
    int column = position % Board_Size;
    
    if (board[row][column] == 0) {
      board[row][column] = User;
      GameState();
      if (!gameEnds) {
        ComputerMove();
        GameState();
      }
    } else {
      println("The square is taken, choose another.");
    }
  } else {
    println("Key is invalid, please select a number between 0 and 8.");
  }
}

//Computer makes move
void ComputerMove() {
  for (int row = 0; row < Board_Size; row ++) {
    for (int column = 0; column < Board_Size; column++) {
      if (board[row][column] == 0) {
        board[row][column] = Computer;
        return;
      }
    }
  }
}

