
import 'package:flutter/material.dart';

class writeQrCodePage extends StatefulWidget {
  writeQrCodePage({Key key, this.title}) : super(key: key);
    final String title;
  @override
  _writePageState createState() => _writePageState();
}

class _writePageState extends State<writeQrCodePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
      ),
    );
  }
}
