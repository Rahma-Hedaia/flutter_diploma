import 'package:flutter/material.dart';
import 'package:flutter_diploma/PlayersNames.dart';
import 'package:flutter_diploma/XOGame.dart';

void main(){
  runApp(MaterialApp(initialRoute: playersLogin.routeName,
      routes: {
    GameBoard.routeName:(context) => GameBoard(),
    playersLogin.routeName:(context) => playersLogin()
      },
      debugShowCheckedModeBanner: false,
     // home: playersLogin(),
      theme: ThemeData(
        textTheme: TextTheme(
            headline3: TextStyle(
                fontSize: 20,
                color: Colors.black
            ),
            headline4: TextStyle(
                fontSize: 25,
                color: Colors.orange
            )
        ),
      )
  ));
}