import 'package:flutter/material.dart';

enum DialogAction {
  yes,
  no,
  maybe,
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void showDialogDemo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Are you sure?'),
          content: new Text('bobby zzz'),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Yes'),
              onPressed: () {
                Navigator.pop(context, DialogAction.yes);
              },
            ),
            new FlatButton(
              child: new Text('No'),
              onPressed: () {
                Navigator.pop(context, DialogAction.no);
              },
            ),
            new FlatButton(
              child: new Text('Maybe'),
              onPressed: () {
                Navigator.pop(context, DialogAction.maybe);
              },
            ),
          ],
        );
      },
    ).then<void>((value) {
      if (value != null) {
        _scaffoldKey.currentState.showSnackBar(
          new SnackBar(
            content: new Text('You selected: $value'),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('AlertDialog'),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                onPressed: () {
                  showDialogDemo(context);
                },
                color: Colors.blue,
                child: new Text(
                  'alert dialog',
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
