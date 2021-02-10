
import 'package:flutter/material.dart';
import 'package:nfc_pilote/screens/read.dart';
import 'package:nfc_pilote/screens/write.dart';

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

  void _navigateToRead() async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) => readPage(title: "Read",)));
  }

  void _navigateToWrite() async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) => writePage(title: "Write",)));
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
            FloatingActionButton(
              heroTag: "read",
              onPressed: _navigateToRead,
              tooltip: 'Read NFC Tag',
              child: Icon(Icons.remove_red_eye_sharp),
            ),
            FloatingActionButton(
              heroTag: "write",
              onPressed: _navigateToWrite,
              tooltip: 'Read NFC Tag',
              child: Icon(Icons.edit),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "counter",
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
