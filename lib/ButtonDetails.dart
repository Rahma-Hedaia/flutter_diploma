import 'package:flutter/material.dart';

class ButtonDetails extends StatelessWidget {
  String button_name;
  int index;
  Function onButtonClick;
  ButtonDetails(this.button_name,this.index,this.onButtonClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: FloatingActionButton(
          heroTag: "btn$index",
          onPressed: () {
            onButtonClick(index);
          },
          child: Text(
            button_name,
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
          backgroundColor: Colors.purple),
    );
  }
}