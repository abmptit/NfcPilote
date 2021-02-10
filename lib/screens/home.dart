import 'package:flutter/material.dart';
import 'package:nfc_pilote/screens/read.dart';
import 'package:nfc_pilote/screens/write.dart';
import 'package:nfc_pilote/screens/readqrcode.dart';
import 'package:nfc_pilote/screens/writeqrcode.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
    final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _navigateToReadNfc() async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) => readPage(title: "Read NFC",)));
  }

  void _navigateToWriteNfc() async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) => writePage(title: "Write NFC",)));
  }


  void _navigateToReadQrCode() async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) => readQrCodePage(title: "Read QR Code",)));
  }

  void _navigateToWriteQrCode() async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) => writeQrCodePage(title: "Write QR Code",)));
  }

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
            IconButton(
              iconSize: 120,
              color: Colors.green,
              onPressed: _navigateToReadNfc,
              tooltip: 'Read NFC Tag',
              icon: Icon(Icons.nfc_sharp),
            ),
            Text(
              'Reading NFC Tag',
            ),
            IconButton(
              iconSize: 120,
              color: Colors.red,
              onPressed: _navigateToWriteNfc,
              tooltip: 'Write NFC Tag',
              icon: Icon(Icons.nfc_sharp),
            ),
            Text(
              'Write NFC Tag',
            ),
            IconButton(
              iconSize: 120,
              color: Colors.green,
              onPressed: _navigateToReadQrCode,
              tooltip: 'Read QRCode',
              icon: Icon(Icons.qr_code),
            ),
            Text(
              'Reading QRCode',
            ),
            IconButton(
              iconSize: 120,
              color: Colors.red,
              onPressed: _navigateToWriteQrCode,
              tooltip: 'Write NFC Tag',
              icon: Icon(Icons.qr_code),
            ),
            Text(
              'Write QRCode',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
