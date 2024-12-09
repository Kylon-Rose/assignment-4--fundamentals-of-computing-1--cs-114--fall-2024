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

void GameState() {
  int winner = checkWinner();
  if (winner != 0) {
    gameEnds = true;
    println(winner == Computer ? "The Computer Wins!" : "You win!!!");
  } else if (FullBoard()) {
    gameEnds = true;
    println("It's a draw!");
  } else {
    println("The game is ongoing.");
  }
}

int checkWinner() {
  for (int row = 0; row < Board_Size; row++) {
    if (board[row][0] != 0 && board[row][0] == board[row][1] && board[row][1] == board[row][2]) {
      return board[row][0];
    }
  }
  for (int column = 0; column < Board_Size; column++) {
    if (board[0][column] != 0 && board[0][column] == board[1][column] && board[1][column] == board[2][column]) {
      return board[0][column];
    }
  }
  if (board[0][0] != 0 && board[0][0] == board[1][1] && board[1][1] == board[2][2]) {
    return board[0][0];
  }
  if (board[0][2] != 0 && board[0][2] == board[1][1] && board[1][1] == board[2][0]) {
    return board[0][2];
  }
  return 0;
}

