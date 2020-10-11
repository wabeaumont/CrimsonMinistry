import 'package:flutter/material.dart';
import 'package:CrimsonMinistry/services/auth.dart';
import 'package:CrimsonMinistry/screens/prayers/prayers.dart';
import 'package:CrimsonMinistry/screens/account/account.dart';

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(8.0, 110.0, 0.0, 0.0),
              child: Text('Home',
                  style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red))),
          RaisedButton(
            onPressed: () async {
              dynamic result = await _auth.signOut();
              print(result);
            },
            child: const Text('Sign Out', style: TextStyle(fontSize: 20)),
          ),
        ]));
  }
}
