import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function _nextMessage;

  TextControl(this._nextMessage);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: _nextMessage,
        color: Colors.blue,
        child: Text(
          'Next Message !',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
