class Board {
  Square[][] squares = new Square[3][3];
  Board() {
    initilizeBoard();
  }
  void initilizeBoard() {
    for (int i=0; i<3; i++) {
      for (int j=0; j<3; j++) {
        squares[i][j]=new Square(new PVector((i)*(scale/3), (j)*(scale/3)));
      }
    }
  }
  boolean Won() {
    for (int i=0; i<3; i++) {

      //rows
      if (squares[i][0].type!='E'&&squares[i][0].type==squares[i][1].type&&squares[i][0].type==squares[i][2].type) {
        return true;
      }
      //columns
      if (squares[0][i].type!='E'&&squares[0][i].type==squares[1][i].type&&squares[0][i].type==squares[2][i].type) {
        return true;
      }
    }
    //diagonals
    if (squares[0][0].type!='E' && squares[0][0].type==squares[1][1].type && squares[2][2].type==squares[0][0].type) {
      return true;
    }
    if (squares[2][0].type!='E'&&squares[2][0].type==squares[1][1].type&&squares[1][1].type==squares[0][2].type) {
      return true;
    }
    return false;
  }
  void clicked(float x, float y) {
    for (int i=0; i<3; i++) {
      for (int j=0; j<3; j++) {
        squares[i][j].clicked(x, y);
      }
    }
  }
  void show() {
    for (int i=0; i<3; i++) {
      for (int j=0; j<3; j++) {
        squares[i][j].show();
      }
    }
  }
  boolean Draw() {
    for (int i=0; i<3; i++) {
      for (int j=0; j<3; j++) {
        if (squares[i][j].type!='E')//skip it while its not emptty
          continue;
        else
          return false;
      }
    }
    return true;//if none is empty and Won hasn't worked yet then its a draw
  }
}
