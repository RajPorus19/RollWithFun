import 'package:flutter/material.dart';
import 'package:roll_with_fun/language.dart';
import 'package:roll_with_fun/pages/home.dart';
import 'package:roll_with_fun/pages/register.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          DemoLocalizations.of(context).getText('appName'),
        ),
        centerTitle: true,
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: DemoLocalizations.of(context).getText('emailHint'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: DemoLocalizations.of(context).getText('passwordHint'),
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Text(
              DemoLocalizations.of(context).getText('loginText'),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Register()));
            },
            child: Text("Register your account"),
          ),
        ],
      ),
    );
  }
}
