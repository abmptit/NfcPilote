
import 'package:flutter/material.dart';

class readPage extends StatefulWidget {
  readPage({Key key, this.title}) : super(key: key);
    final String title;
  @override
  _readPageState createState() => _readPageState();
}

class _readPageState extends State<readPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Reading NFC Tag ....',
            ),

          ],
        ),
      ),
    );
  }
}
