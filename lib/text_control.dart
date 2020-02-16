import 'package:flutter/material.dart';
import 'package:flutter_training2/text_output.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _text = 'Heloooooo';


  @override
  Widget build(BuildContext context) {
    final button = RaisedButton(
      onPressed: (){
        setState(() {
          _text = _text == 'Heloooooo' ? _text = 'Changed!':
          _text == 'Changed!' ? _text = 'Heloooooo':
          _text = '';
        });
      },
      child: Text('Click Me!'),
      color: Colors.blue,
      textColor: Colors.white,);

    final body = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            button,
            TextOutput(_text)
          ],
        ),
      );

    return body;
  }
}
