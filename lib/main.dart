import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The First App"),
        ),
        body: Column(
          children: <Widget>[
            Text("This is the question"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: () => print("Answer 1 chosen"),
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () {
                print("Answer 2 chosen");
              },
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
