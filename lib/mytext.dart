import 'package:flutter/material.dart';
import './textcontrol.dart';

class MyText extends StatelessWidget {
  final String _myMessage;
  final Function _nextMessage;
  MyText(this._myMessage, this._nextMessage);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          _myMessage,
          style: TextStyle(
            fontSize: 30,
          ),
        )),
        TextControl(_nextMessage),
      ],
    );
  }
}
