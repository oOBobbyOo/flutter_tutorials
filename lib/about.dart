import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
