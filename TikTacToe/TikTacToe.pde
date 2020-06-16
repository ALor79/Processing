float scale;
char turn;
Board board;
PVector origin;
void setup () {
  turn='X';
  fullScreen();
  //size(400,650);
  if (width<height)
    scale=width;
  else
    scale=height;
  origin=new PVector((width-scale)/2,(height-scale)/2);
  board=new Board();
}
void draw () {
  background(0);

  board.show();
  if (board.Won()) {
    println("hallelooya");
    endOfGame("WON");
  }
  if (board.Draw()) {
    println("goooz");
    endOfGame("DRAW");
  }
}
void mousePressed() {

  board.clicked(mouseX, mouseY);
}
void restartGame() {
  turn='X';
  board=new Board();
}
void endOfGame(String gameState) {
  noLoop();
  background(168);
  
  String s="";
  if (gameState=="DRAW") {
    s="It's a draw!!";
    fill(255, 255, 0);
  }
  if (gameState=="WON") {
    fill(0, 255, 0);
    if (turn=='X') 
      s="O Won!!";
    else
      s="X Won!!";
  }
  float Size=width/s.length();
  textSize(Size);
  float sWidth=textWidth(s);
  float sHeight=textWidth(s.charAt(0));
  text(s, width/2-sWidth/2, height/2+sHeight/2);
}
