import 'package:flutter/material.dart';
import 'package:flutter_diploma/ButtonDetails.dart';

class GameBoard extends StatefulWidget {
  static String routeName ='GameBoard';
  // String player1Name;
  // String player2Name;
  //
  // GameBoard({this.player1Name, this.player2Name});
  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  int counter = 0;
  String text = '';
  int player1Score = -2;
  int player2Score = 0;

  List<String> board = ['', '', '', '', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    GameBoardArgs args = ModalRoute.of(context).settings.arguments as GameBoardArgs;
    // TextEditingController player1Controller= TextEditingController();
    // TextEditingController player2Controller= TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('X O Game'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '${args.player1Name}(X)',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '$player1Score',
                    style: Theme.of(context).textTheme.headline3,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '${args.Player2Name}(O)',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '$player2Score',
                    style: Theme.of(context).textTheme.headline3,
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonDetails(board[0], 0, onButtonClick),
              ButtonDetails(board[1], 1, onButtonClick),
              ButtonDetails(board[2], 2, onButtonClick)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonDetails(board[3], 3, onButtonClick),
              ButtonDetails(board[4], 4, onButtonClick),
              ButtonDetails(board[5], 5, onButtonClick)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonDetails(board[6], 6, onButtonClick),
              ButtonDetails(board[7], 7, onButtonClick),
              ButtonDetails(board[8], 8, onButtonClick)
            ],
          ),
        ],
      ),
    );
  }

  void onButtonClick(int index) {

    if(counter<9){
      if(counter%2==0){
        if(board[index].isEmpty){
        board[index]='X';
        player1Score+=2;
        counter++;
        print(counter);
        }
        if(whoIsWinner('X')){
          player1Score+=5;
          initBoard();
        }
      }else if(counter%2 !=0){
        if(board[index].isEmpty){
        board[index]='O';
        player2Score+=2;
        counter++;
        print(counter);}
        if(whoIsWinner('O')){
          player2Score+=5;
          initBoard();
        }
      }
    }else{
      print(counter);
      initBoard();
    }
    setState(() {

    });
  }

  bool whoIsWinner(String symbol) {
    for(int i=0;i<7;i+=3){
      // for rows
      if(
      board[i]==symbol && board[i+1]==symbol && board[i+2] == symbol
      ){
        return true;
      }
    }
    for(int i =0;i<3;i++){
      //for columns
      if(
      board[i]==symbol && board[i+3]==symbol && board[i+6] == symbol
      ){
        return true;
      }
    }
    // for cross
    if(board[0]==symbol && board[4]==symbol && board[8]==symbol){
      return true;
    }
    if(board[2]==symbol && board[4]==symbol && board[6]==symbol){
      return true;
    }
    return false;
  }

  void initBoard() {
    counter = 0;
    setState(() {
      board = ['', '', '', '', '', '', '', '', ''];
    });
  }
}
class GameBoardArgs{
  String player1Name;
  String Player2Name;

  GameBoardArgs({this.player1Name, this.Player2Name});
}
