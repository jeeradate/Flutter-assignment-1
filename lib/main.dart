// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'mytext.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _myMessage = [
    '1 This is the first sentence',
    '2 This is the second sentence',
    '3 This is the third sentence'
  ];
  var _messageIndex = 0;

  void _nextMessage() {
    setState(() {
      _messageIndex++;
      if (_messageIndex >= _myMessage.length) {
        _messageIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter assignment1'),
        ),
        body: MyText(_myMessage[_messageIndex], _nextMessage),
      ),
    );
  }
}
