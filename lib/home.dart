import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  drawer(context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
            child: new Container(
              child: new Column(
                children: <Widget>[
                  new Image.asset(
                    'images/user.jpg',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                  new Text(
                    'Bobby',
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.home),
            title: new Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          new Divider(
            color: Colors.blue,
            indent: 16.0,
          ),
          new ListTile(
            leading: new Icon(Icons.group),
            title: new Text('About'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/about');
            },
          ),
          new Divider(
            color: Colors.blue,
            indent: 16.0,
          ),
          new ListTile(
            leading: new Icon(Icons.supervisor_account),
            title: new Text('SignUp'),
            onTap: () {
              Navigator.of(context).pushNamed('/signup');
            },
          ),
          new Divider(
            color: Colors.blue,
            indent: 16.0,
          ),
          new ListTile(
            leading: new Icon(Icons.account_box),
            title: new Text('Login'),
            onTap: () {
              Navigator.of(context).pushNamed('/login');
            },
          ),
          new Divider(
            color: Colors.blue,
            indent: 16.0,
          ),
          new AboutListTile(
            icon: new Icon(Icons.copyright),
            applicationName: 'all rights reserved',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      drawer: drawer(context),
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              child: new Text('open deawer'),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
            new RaisedButton(
              child: new Text('go horizonal'),
              onPressed: () {
                Navigator.of(context).pushNamed('/horizonal');
              },
            ),
            new RaisedButton(
              child: new Text('go dialog'),
              onPressed: () {
                Navigator.of(context).pushNamed('/dialog');
              },
            ),
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
