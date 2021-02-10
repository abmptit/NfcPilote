
import 'package:flutter/material.dart';

class readQrCodePage extends StatefulWidget {
  readQrCodePage({Key key, this.title}) : super(key: key);
    final String title;
  @override
  _readPageState createState() => _readPageState();
}

class _readPageState extends State<readQrCodePage> {

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
              'Reading QR Code ....',
            ),

          ],
        ),
      ),
    );
  }
}
