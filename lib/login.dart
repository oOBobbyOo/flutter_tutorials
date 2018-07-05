import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = new GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

Future<Null> _handleSignIn() async {
  try {
    await _googleSignIn.signIn();
    print('signed in' + _googleSignIn.currentUser.displayName);
  } catch (error) {
    print(error);
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _login() {
    _handleSignIn();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: new Container(
        margin: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: new Color.fromRGBO(240, 240, 250, 0.9),
                border: new Border.all(
                  width: 1.2,
                  color: Colors.black12,
                ),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(5.0)),
              ),
              child: new TextField(
                decoration: new InputDecoration(
                  icon: new Icon(Icons.person_outline),
                  hintText: 'Username',
                  // contentPadding: const EdgeInsets.all(10.0),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.text,
                autocorrect: false,
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: new Color.fromRGBO(240, 240, 250, 0.9),
                border: new Border.all(
                  width: 1.2,
                  color: Colors.black12,
                ),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(5.0)),
              ),
              child: new TextField(
                decoration: new InputDecoration(
                  icon: new Icon(Icons.email),
                  hintText: 'Email',
                  // contentPadding: const EdgeInsets.all(10.0),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: new Color.fromRGBO(240, 240, 250, 0.9),
                border: new Border.all(
                  width: 1.2,
                  color: Colors.black12,
                ),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(5.0)),
              ),
              child: new TextField(
                decoration: new InputDecoration(
                  icon: new Icon(Icons.lock_outline),
                  hintText: 'Password',
                  // contentPadding: const EdgeInsets.all(10.0),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.text,
                autocorrect: false,
                obscureText: true,
              ),
            ),
            new RaisedButton(
              onPressed: _login,
              child: new Text(
                'Google login',
                style: new TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
