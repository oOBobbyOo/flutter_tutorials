import 'package:flutter/material.dart';

class User {
  String username;
  String email;
  String password;
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();

  final User user = new User();

  void _signup() {
    setState(() {
      user.username = userController.text;
      user.email = emailController.text;
      user.password = pwdController.text;
    });
    print('username: ' + user.username);
    print('email: ' + user.email);
    print('password: ' + user.password);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: new Container(
        margin: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              controller: userController,
              decoration: new InputDecoration(
                icon: new Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                hintText: 'Username',
              ),
              keyboardType: TextInputType.text,
              autocorrect: false,
            ),
            new TextField(
              controller: emailController,
              decoration: new InputDecoration(
                icon: new Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
            ),
            new TextField(
              controller: pwdController,
              decoration: new InputDecoration(
                icon: new Icon(
                  Icons.lock_outline,
                  color: Colors.black,
                ),
                hintText: 'Password',
              ),
              keyboardType: TextInputType.text,
              autocorrect: false,
              obscureText: true,
            ),
            new Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: new Text('Sign up'),
                      onPressed: _signup,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
