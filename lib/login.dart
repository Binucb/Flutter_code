import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                new Text('Image to be updated'),
                new Text('Shrine'),
              ],
            ),
            SizedBox(height: 120.0),
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
              controller: _usernamecontroller,
            ),
            SizedBox(height: 12.0),
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              controller: _passwordcontroller,
              obscureText: true,
            ),
            ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: new Text('CLEAR'),
                    onPressed: () {
                      _usernamecontroller.clear();
                      _passwordcontroller.clear();
                    },
                  ),
                  RaisedButton(
                      child: new Text('NEXT'),
                      onPressed: () {
                        Navigator.pop(context);
                      })
                ]
            )
          ],
        ),
      ),
    );
  }


}
