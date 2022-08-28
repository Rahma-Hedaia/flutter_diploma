import 'package:flutter/material.dart';
import 'package:flutter_diploma/XOGame.dart';

class playersLogin extends StatelessWidget {
  static String routeName ='PlayersLogin';

  String player1Name='';
String player2Name='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Welcome to my first game'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40,right: 15, left: 15,bottom: 30),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "First Player name",labelStyle: TextStyle(
                color: Colors.purple,
              ),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.person, color: Colors.purple),
              ),
              onChanged: (text){
                player1Name=text;
              },
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Second Player name",labelStyle: TextStyle(
                color: Colors.purple,
              ),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.person, color: Colors.purple),
              ),
              onChanged: (text){
                player2Name=text;
              },
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, GameBoard.routeName,arguments: GameBoardArgs(player1Name: player1Name,Player2Name: player2Name));
              },
              // onPressed: ()
              // {
              //     Navigator.of(context)
              //         .push(MaterialPageRoute(builder: (context) {
              //       return GameBoard();
              //     }));
              // },
              child: Text(
                "Let's play",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                 fixedSize: Size(double.maxFinite, 55),
                 // fixedSize: const Size(double.infinity,40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ],
        ),
      ),
    );
  }
}
