import 'package:flutter/material.dart';
const String _name = "Faith Godwin";
class ChatMessage extends StatelessWidget{

final String text;

ChatMessage({this.text}); 
 
  @override
Widget build(BuildContext context){
  return new Container(
    margin: const EdgeInsets.symmetric(vertical: 10.0),
    child: new Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(right: 16.0),
          child: new CircleAvatar(
                    child: new Text(_name [0]),
                  ),
        ),
       
        new Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: new Text(text),
                    
        )
      ],),
  );
}
}